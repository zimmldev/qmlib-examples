cmake_minimum_required(VERSION 3.19)

project(ContainerExample LANGUAGES CXX)

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
	qml/main-applicationwindow.qml
	qml/main-bottomsheet.qml
	qml/main-card.qml
	qml/main-carousel.qml
	qml/main-contractinglayout.qml
	qml/main-contractinglistview.qml
	qml/main-divider.qml
	qml/main-gridlist.qml
	qml/main-listitem.qml
	qml/main-listview.qml
	qml/main-swipelistitem.qml
	qml/main-page.qml
	qml/main-removelistitem.qml
	qml/main-topappbar.qml
)

set(_other
	icons/circle-filled.png
	icons/circle-stroke.png
	icons/square-filled.png
	icons/square-stroke.png
	icons/triangle-filled.png
	icons/triangle-stroke.png
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Container
	Example
	Image
)

add_example(TARGET
		ContainerExample
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
