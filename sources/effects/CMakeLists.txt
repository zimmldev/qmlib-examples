cmake_minimum_required(VERSION 3.19)

project(EffectsExample LANGUAGES CXX)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main.qml
	qml/main-blend.qml
	qml/main-blur.qml
	qml/main-blackandwhite.qml
	qml/main-contrastbrightnesssaturation.qml
	qml/main-greyscale.qml
	qml/main-homography.qml
	qml/main-dropshadow.qml
	qml/main-lens.qml
	qml/main-halo.qml
	qml/main-mask.qml
	qml/main-rgbshift.qml
)

set(_other
	images/sample.jpg
	images/sample2.jpg
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Effects
	Example
	Image
)

add_example(TARGET
		EffectsExample
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
