cmake_minimum_required(VERSION 3.19)

project(ContainerExample LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_qml
	qml/main.qml
	qml/main-pressanimation.qml
)

set(_dependencies
	Animation
	Example
)

add_example(TARGET
		AnimationExample
	SOURCES
		${_sources}
	QML_FILES
		${_qml}
	LINK
		Qt${QT_VERSION_MAJOR}::Core
		Qt${QT_VERSION_MAJOR}::Quick
		Qt${QT_VERSION_MAJOR}::Qml
	QML_DEPENDENCIES
		${_dependencies}
)
