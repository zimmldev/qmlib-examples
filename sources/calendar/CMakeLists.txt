cmake_minimum_required(VERSION 3.19)

project(CalendarExample LANGUAGES CXX)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main.qml
	qml/main-calendar.qml
	qml/main-dateinput.qml
	qml/main-datepicker.qml
	qml/main-day.qml
	qml/main-swipecalendar.qml
	qml/main-timeline.qml
	qml/main-timepicker.qml
 )

set(_other
)

if (ANDROID)
	set(libraries
		z)
endif()

set(_dependencies
	Calendar
	Example
)

add_example(TARGET
		CalendarExample
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
