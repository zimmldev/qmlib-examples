cmake_minimum_required(VERSION 3.19)

project(DialogExample LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main.qml
	qml/main-banner.qml
	qml/main-buttonconfirmation.qml
	qml/main-dialog.qml
	qml/main-dismissabledialog.qml
	qml/main-fullscreendialog.qml
	qml/main-snackbar.qml
	qml/main-validationdialog.qml
)

set(_other
	icons.qrc
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Dialog
	Example
)

add_example(TARGET
		DialogExample
	SOURCES
		${_sources}
		${_headers}
	RESOURCES
		${_other}
	QML_FILES
		${_qml}
	LINK
		Qt${QT_VERSION_MAJOR}::Core
		Qt${QT_VERSION_MAJOR}::Quick
		Qt${QT_VERSION_MAJOR}::Qml
	QML_DEPENDENCIES
		${_dependencies}
)
