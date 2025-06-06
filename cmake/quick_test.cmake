include(CMakeParseArguments)

function (write_if_changes FILENAME CONTENT)
	set(NEW_CONTENT_STRING "${CONTENT}")

	if(EXISTS ${FILENAME})
		file(READ ${FILENAME} CURRENT_CONTENT)
		set(CURRENT_CONTENT_STRING "${CURRENT_CONTENT}")
	endif()

	if (NOT "${NEW_CONTENT_STRING}" STREQUAL "${CURRENT_CONTENT_STRING}")
		file(WRITE ${FILENAME} "${NEW_CONTENT_STRING}")
	endif()
endfunction()

function(add_quick_test)
	set(oneValueArgs TARGET)
	set(multiValueArgs LINK SOURCES QML_FILES LINK_DIRECTORIES EXTRA_ARGUMENTS ENVIRONMENT_ARGUMENTS QML_DEPENDENCIES TEST_SOURCE_DIR)

	cmake_parse_arguments(ADD_EXE "${options}" "${oneValueArgs}"
											  "${multiValueArgs}" ${ARGN} )
	cmake_policy(SET CMP0071 NEW)

	if (ADD_EXE_TEST_SOURCE_DIR)
	else()
		set(ADD_EXE_TEST_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR})
	endif()

	if (NOT ANDROID AND NOT IOS)
		find_package(QT NAMES Qt6 Qt5 COMPONENTS QuickTest REQUIRED)
		find_package(Qt${QT_VERSION_MAJOR} COMPONENTS QuickTest REQUIRED)

		# Generate the cpp file for test
		write_if_changes(${CMAKE_CURRENT_BINARY_DIR}/${ADD_EXE_TARGET}.test.cpp
		    "#include <QtQuickTest>
#include <QQmlEngine>
#include <QQmlContext>
#include <QGuiApplication>
#include <QApplication>
#include <QtWebEngineQuick>

class Setup : public QObject
{
Q_OBJECT

public:
	Setup() {
		int argc = 0;
		char ** argv = nullptr;
		QGuiApplication::setApplicationName(\"${ADD_EXE_TARGET}\");
		QGuiApplication::setOrganizationName(\"zimmldev\");
		QGuiApplication::setOrganizationDomain(\"org.zimmldev\");
		QtWebEngineQuick::initialize();
		new QApplication(argc, argv);
	}

public slots:
	void applicationAvailable()
	{
		// Initialization that only requires the QGuiApplication object to be available
	}

	void cleanupTestCase()
	{
		// Implement custom resource cleanup
	}
};

QUICK_TEST_MAIN_WITH_SETUP(${ADD_EXE_TARGET}, Setup)

#include \"${ADD_EXE_TARGET}.test.moc\""
				)

		qt_add_executable(${ADD_EXE_TARGET}
				${ADD_EXE_SOURCES}
				${CMAKE_CURRENT_BINARY_DIR}/${ADD_EXE_TARGET}.test.cpp)

		foreach(dep ${ADD_EXE_QML_DEPENDENCIES})
			string(TOLOWER ${dep} libname)
			if (QMLIB_STATIC)
				set(pluginslink ${pluginslink} ${libname}plugin)
			endif()
		endforeach()

		qt_policy(SET QTP0001 NEW)

		qt_add_qml_module(${ADD_EXE_TARGET}
			URI ${ADD_EXE_TARGET}
			VERSION
				1.0
			QML_FILES
				${ADD_EXE_QML_FILES}
			IMPORTS
				${ADD_EXE_QML_DEPENDENCIES}
		)

		find_package(QT NAMES Qt6 Qt5 COMPONENTS Widgets WebEngineQuick REQUIRED)
		find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Widgets WebEngineQuick REQUIRED)

		add_test(NAME ${ADD_EXE_TARGET}
				COMMAND ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${ADD_EXE_TARGET}
						${ADD_EXE_EXTRA_ARGUMENTS})

		# Disable leak detection on QML tests for now
		set_tests_properties(${ADD_EXE_TARGET} PROPERTIES
							ENVIRONMENT
							ASAN_OPTIONS=detect_leaks=0:poison_heap=0)

		set_property(TARGET ${ADD_EXE_TARGET} PROPERTY ${PROJECT_NAME}_PRIVATE 1)
		target_compile_definitions(${ADD_EXE_TARGET} PRIVATE
		    -DQUICK_TEST_SOURCE_DIR="${ADD_EXE_TEST_SOURCE_DIR}")
		target_link_libraries(${ADD_EXE_TARGET}
			PRIVATE
				${ADD_EXE_LINK}
				${pluginslink}
				Qt${QT_VERSION_MAJOR}::Core
				Qt${QT_VERSION_MAJOR}::Quick
				Qt${QT_VERSION_MAJOR}::QuickTest
				Qt${QT_VERSION_MAJOR}::Qml
				Qt${QT_VERSION_MAJOR}::Widgets
				Qt${QT_VERSION_MAJOR}::WebEngineQuick
		)
		qt_import_qml_plugins(${ADD_EXE_TARGET})
	endif()
endfunction()

function(warning_exception_pattern exceptions out)
	set(pattern "")
	if (APPLE)
		set(${exceptions}
			${${exceptions}}
			"outside any known screen, using primary screen")
	endif()

	foreach (exception ${${exceptions}})
		set(pattern "${pattern}(?!.*${exception})")
	endforeach()

	if (pattern STREQUAL "")
		set(pattern "/.?/")
	else()
		string(PREPEND pattern "/^")
		string(APPEND pattern ".*$/")
	endif()
	set(${out} ${pattern} PARENT_SCOPE)
endfunction()

function(add_qrc_quick_test)
	set(oneValueArgs TARGET)
	set(multiValueArgs QML_FILES SOURCES WARNING_EXCEPTIONS QML_DEPENDENCIES EXTRA_ARGUMENTS)

	cmake_parse_arguments(ADD_EXE "${options}" "${oneValueArgs}"
					"${multiValueArgs}" ${ARGN} )

	# Compute the exception pattern
	if (NOT ADD_EXE_WARNING_EXCEPTIONS)
		set(ADD_EXE_WARNING_EXCEPTIONS "")
	endif()
	warning_exception_pattern(ADD_EXE_WARNING_EXCEPTIONS exceptionPattern)

	# Remove all singleton from the list
	foreach(qml_file ${ADD_EXE_QML_FILES})
		# Get the property value for QT_QML_SINGLETON_TYPE
		get_source_file_property(is_singleton ${qml_file} QT_QML_SINGLETON_TYPE)
		get_source_file_property(is_untestable ${qml_file} QT_QML_UNTESTABLE)

		# Check if QT_QML_SINGLETON_TYPE is not TRUE
		if (NOT is_singleton AND NOT is_untestable)
			list(APPEND ADD_EXE_QML_FILES_TESTABLE ${qml_file})
		endif()
	endforeach()

	# If the list of file to test is empty return directly before creating the test
	list(LENGTH ADD_EXE_QML_FILES_TESTABLE list_length)
	if(list_length EQUAL 0)
		return() # We don't have any file to tests -> abort
	endif()

	# Auto-generate all tests
	foreach (qml ${ADD_EXE_QML_FILES_TESTABLE})
		string(REPLACE "/" "" merged ${qml})

		set(fileName "tst_${merged}")
		set(prefix "/qt/qml/${ADD_EXE_TARGET}QrcTests")
		set(qrc "qrc:${prefix}/${qml}")
		file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/${fileName}
"import QtQuick
import QtTest

import Colors 1.0

Rectangle {
	width: 50
	height: 50
	focus: true

	property var pal: Palettes.current
	property bool fullscreen: false

	Loader {
		id: loader
	}

	TestCase {
		name: \"${qrc}-viewShown\"
		when: windowShown

		function test_loaded() {
			failOnWarning(${exceptionPattern})
			loader.setSource(\"${qrc}\")
			verify(loader.status === Loader.Ready)
			waitForRendering(loader, 5000)
		}
	}
}"
)
		set(qmltest_SRCS ${qmltest_SRCS} ${fileName})
	endforeach()

	add_quick_test(
		TARGET
			${ADD_EXE_TARGET}QrcTests
		QML_FILES
			${ADD_EXE_QML_FILES}
		SOURCES
			${qmltest_SRCS}
			${ADD_EXE_SOURCES}
		TEST_SOURCE_DIR
			${CMAKE_CURRENT_BINARY_DIR}
		EXTRA_ARGUMENTS
			${ADD_EXE_EXTRA_ARGUMENTS}
		QML_DEPENDENCIES
			${ADD_EXE_QML_DEPENDENCIES}
	)
endfunction()

