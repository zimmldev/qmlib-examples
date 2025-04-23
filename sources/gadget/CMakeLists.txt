cmake_minimum_required(VERSION 3.19)

project(GadgetExample LANGUAGES CXX)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core QuickQml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main.qml
	qml/main-camerapermission.qml
	qml/main-contactform.qml
	qml/main-developeritem.qml
	qml/main-followus.qml
	qml/main-permissionpage.qml
	qml/main-servererror.qml
	qml/main-updatebanner.qml
	qml/main-updatepage.qml
)

set(_other
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Gadget
	Example
)

add_example(TARGET
		GadgetExample
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
