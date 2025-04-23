cmake_minimum_required(VERSION 3.19)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Network Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Network Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_qml
	qml/main.qml
	qml/main-buttons.qml
	qml/main-gallery.qml
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Panel
	Example
)

set(_other
	icons/circle-filled.png
	icons/circle-stroke.png
	icons/square-filled.png
	icons/square-stroke.png
	icons/triangle-filled.png
	icons/triangle-stroke.png
)

add_example(TARGET
		PanelExample
	SOURCES
		${_sources}
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
