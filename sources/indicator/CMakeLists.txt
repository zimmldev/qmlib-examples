cmake_minimum_required(VERSION 3.19)

project(IndicatorExample LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Network Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Network Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main-badge.qml
	qml/main-colormarker.qml
	qml/main-needle.qml
	qml/main-progressindicator.qml
	qml/main-progressoverlay.qml
	qml/main.qml
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencie
	Indicator
	Example
)

add_example(TARGET
		IndicatorExample
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
		${_dependencie}
)
