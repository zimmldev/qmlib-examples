cmake_minimum_required(VERSION 3.19)

project(VideoExample LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Network Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Network Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main.qml
	qml/main-video.qml
)

set(_other
	samples/video.mp4
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Video
	Example
)

add_example(TARGET
		VideoExample
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
	WARNING_EXCEPTIONS
		"Couldn't load VAAPI library"
		"PulseAudioService: pa_context_connect"
	QML_DEPENDENCIES
		${_dependencies}
)
