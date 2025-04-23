cmake_minimum_required(VERSION 3.19)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Network Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Network Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Colors
	Example)

add_example(TARGET
		ColorsExample
	SOURCES
		${_sources}
		${_headers}
	QML_FILES
		qml/main.qml
		qml/ColorItem.qml
	LINK
		Qt${QT_VERSION_MAJOR}::Core
		Qt${QT_VERSION_MAJOR}::Quick
		Qt${QT_VERSION_MAJOR}::Qml
	QML_DEPENDENCIES
		${_dependencies}
)
