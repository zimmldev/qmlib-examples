cmake_minimum_required(VERSION 3.19)

project(Gallery LANGUAGES CXX)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main.qml
)

set(_other
)

set(_dependencies
	Example
)

if (QMLIB_ANIMATION)
	set(_dependencies
		${_dependencies}
		AnimationExample
	)
endif()

if (QMLIB_CALENDAR)
	set(_dependencies
		${_dependencies}
		CalendarExample
	)
endif()

if (QMLIB_COLORS)
	set(_dependencies
		${_dependencies}
		ColorsExample
	)
endif()

if (QMLIB_CONTAINER)
	set(_dependencies
		${_dependencies}
		ContainerExample
	)
endif()

if (QMLIB_CONTROL)
	set(_dependencies
		${_dependencies}
		ControlExample
	)
endif()

if (QMLIB_DIALOG)
	set(_dependencies
		${_dependencies}
		DialogExample
	)
endif()

if (QMLIB_EFFECTS)
	set(_dependencies
		${_dependencies}
		EffectsExample
	)
endif()

if (QMLIB_GADGET)
	set(_dependencies
		${_dependencies}
		GadgetExample
	)
endif()

if (QMLIB_HELP)
	set(_dependencies
		${_dependencies}
		HelpExample
	)
endif()

if (QMLIB_ICON)
	set(_dependencies
		${_dependencies}
		IconExample
	)
endif()

if (QMLIB_IMAGE)
	set(_dependencies
		${_dependencies}
		ImageExample
	)
endif()

if (QMLIB_INDICATOR)
	set(_dependencies
		${_dependencies}
		IndicatorExample
	)
endif()

if (QMLIB_PANEL)
	set(_dependencies
		${_dependencies}
		PanelExample
	)
endif()

if (QMLIB_PLOTS)
	set(_dependencies
		${_dependencies}
		PlotsExample
	)
endif()

if (QMLIB_VIDEO)
	set(_dependencies
		${_dependencies}
		VideoExample
	)
endif()

add_example(TARGET
		Gallery
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
