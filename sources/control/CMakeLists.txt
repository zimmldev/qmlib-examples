cmake_minimum_required(VERSION 3.19)

project(ControlExample LANGUAGES CXX)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main.qml
	qml/main-bottomsheet.qml
	qml/main-buttons.qml
	qml/main-checkboxes.qml
	qml/main-chip.qml
	qml/main-combobox.qml
	qml/main-drawarea.qml
	qml/main-dropdownbutton.qml
	qml/main-emailfield.qml
	qml/main-floatingbutton.qml
	qml/main-floatingmenu.qml
	qml/main-menubutton.qml
	qml/main-longpressbutton.qml
	qml/main-morebutton.qml
	qml/main-navigationbar.qml
	qml/main-navigationrail.qml
	qml/main-passwordfield.qml
	qml/main-pageindicator.qml
	qml/main-popup.qml
	qml/main-radiobutton.qml
	qml/main-rangeslider.qml
	qml/main-roundswipecombobox.qml
	qml/main-roundscrollbar.qml
	qml/main-searchbar.qml
	qml/main-searchresult.qml
	qml/main-segments.qml
	qml/main-slider.qml
	qml/main-spinbox.qml
	qml/main-swipebutton.qml
	qml/main-switches.qml
	qml/main-tabbar.qml
	qml/main-textarea.qml
	qml/main-textfield.qml
	qml/mainlist-view.qml
 )

set_source_files_properties(qml/main-drawarea.qml PROPERTIES
	QT_QML_UNTESTABLE TRUE
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
	Control
	Example
	Image)

add_example(TARGET
		ControlExample
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
