cmake_minimum_required(VERSION 3.19)

project(ImageExample LANGUAGES CXX)

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
	qml/main-avatar.qml
	qml/main-avatarselector.qml
	qml/main-carousel.qml
	qml/main-handle.qml
	qml/main-image.qml
	qml/main-imagelist.qml
	qml/main-maskedimage.qml
	qml/main-zoomableimage.qml
)

set(_other
	images/sample.jpg
	images/sample2.jpg
	images/thumbnail.jpg
	images/video.mp4
	template/image1.png
	template/image2.png
	template/image3.png
	template/image4.png
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Image
	Example
)

add_example(TARGET
		ImageExample
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
