cmake_minimum_required(VERSION 3.19)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Qml Charts Widgets REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Qml Charts Widgets REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main.qml
	qml/bar-example.qml
	qml/donuts-example.qml
	qml/horizontalbar-example.qml
	qml/horizontalpercentbar-example.qml
	qml/horizontalstackedbar-example.qml
	qml/line-example.qml
	qml/percentbar-example.qml
	qml/pie-example.qml
	qml/scatter-example.qml
	qml/spline-example.qml
	qml/stackedbar-example.qml
	qml/stacked-example.qml
	qml/gradient-example.qml
	qml/polar-example.qml
)

set(_other
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Plots
	Example
)

add_example(TARGET
		PlotsExample
	SOURCES
		${_sources}
		${_headers}
	RESOURCES
		${_other}
	QML_FILES
		${_qml}
	LINK
		QMLib::plots
		Qt${QT_VERSION_MAJOR}::Quick
		Qt${QT_VERSION_MAJOR}::Core
		Qt${QT_VERSION_MAJOR}::Qml
		Qt${QT_VERSION_MAJOR}::Charts
		Qt${QT_VERSION_MAJOR}::Widgets
	QML_DEPENDENCIES
		${_dependencies})

