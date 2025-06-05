cmake_minimum_required(VERSION 3.19)

project(QMLibExamples LANGUAGES CXX)

# Define C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
if (UNIX)
	set(CMAKE_POSITION_INDEPENDENT_CODE ON)	 # Needed for Linux only !!
endif()

# First include libraries that must not depends on our configuration
include(cmake/ccache.cmake)

# Include all CMake function we will need in our projects
include(cmake/exe.cmake)
include(cmake/example.cmake)
include(cmake/plugin.cmake)
include(cmake/lib.cmake)
include(cmake/test.cmake)
include(cmake/quick_test.cmake)
include(cmake/systemlibrary.cmake)
include(cmake/translate.cmake)
include(cmake/merge.cmake)

# Setup our flags
include(cmake/flags.cmake)
include(cmake/iwyu.cmake)

# Include CTest on top level to be able to run CTest from root
include(CTest)

# Setup Qt related stuffs
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
find_package(QT NAMES Qt6 Qt5 COMPONENTS Core Quick Qml REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core Quick Qml REQUIRED)

# Setup platform dependant stuffs
if (ANDROID)
	if (NOT DEFINED ANDROID_BUILD_PLATFORM)
		set(ANDROID_BUILD_PLATFORM "android-34")
	endif()
elseif (UNIX)
	set(QML_IMPORT_PATH ${CMAKE_BINARY_DIR}/bin/plugins)
	set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/arch)
	set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
	set(CMAKE_PBD_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/pbd)
	set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
	set(EXECUTABLE_OUTPUT_PATH  ${CMAKE_BINARY_DIR}/exe)
else()
	set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/arch)
	set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
	set(CMAKE_PBD_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/pbd)
	set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
	set(EXECUTABLE_OUTPUT_PATH  ${CMAKE_BINARY_DIR}/exe)
endif()

# Disable building and running tests for WebAssembly and iOS builds
if (EMSCRIPTEN)
	set(BUILD_TESTING OFF)
	set(TESTING_ENABLED OFF)
endif()

if (IOS)
	set(BUILD_TESTING OFF)
	set(TESTING_ENABLED OFF)
endif()

if (1)
	# Specify the path to the installed library and headers
	set(QMLIB_DIR "/tmp")

	# Add the directory containing the installed cmake configuration or manually set the include path and library
	find_package(QMLib REQUIRED PATHS "${QMLIB_DIR}/lib/cmake" NO_DEFAULT_PATH)

	# # If find_package doesn't apply, you can manually include the installed headers and link to the library
	# include_directories("${QMLIB_DIR}/include")  # Adjust the path if needed
	 link_directories("${QMLIB_DIR}/lib")        # Path to library files like .so, .a, or .dll
	 link_directories("${QMLIB_DIR}/arch")        # Path to library files like .so, .a, or .dll
else()
	add_subdirectory(../kiddoo/sources/core/sources/qmlib/sources ${CMAKE_CURRENT_BINARY_DIR}/qmlib)
endif()

add_subdirectory(sources)
