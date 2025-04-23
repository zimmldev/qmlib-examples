cmake_minimum_required(VERSION 3.19)

project(FontExample LANGUAGES CXX)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core QuickQml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Qml REQUIRED)

set(_sources
	main.cpp
	)

set(_headers
	)

set(_qml
	qml/main.qml
	qml/main-weight.qml
)

set(_fonts
	fonts.qrc
)

set(_dependencies
	Font
	Panel
	Example
)

add_example(TARGET
		FontExample
	SOURCES
		${_sources}
		${_headers}
		${_fonts}
	QML_FILES
		${_qml}
	LINK
		QMLib::font
		Qt${QT_VERSION_MAJOR}::Core
		Qt${QT_VERSION_MAJOR}::Quick
		Qt${QT_VERSION_MAJOR}::Qml
	QML_DEPENDENCIES
		${_dependencies}
)
