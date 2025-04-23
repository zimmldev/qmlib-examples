cmake_minimum_required(VERSION 3.19)

project(IconExample LANGUAGES CXX)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main.qml
	qml/main-colorizedicon.qml
	qml/main-iconlabel.qml
	qml/main-largeiconlabel.qml
)

set(_other
	icons/bug.png
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Icon
	Example
	Control
)

add_example(TARGET
		IconExample
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
		${libraries}
	QML_DEPENDENCIES
		${_dependencies}
)
