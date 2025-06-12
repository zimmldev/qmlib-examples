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
set(QMLIB_STATIC OFF)

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

if (QMLIB_STATIC)
	# Define a CMake variable (not an option, so user must provide via -D or cache)
	set(QMLIB_SOURCE_PATH "" CACHE PATH "Path to the qmlib sources directory")
	add_definitions(-DQMLIB_IMPORT_PATH=\"\")

	# Check if the variable is set and is a valid directory
	if(NOT QMLIB_SOURCE_PATH)
	    message(FATAL_ERROR "QMLIB_SOURCE_PATH is not set. Please specify the path to qmlib sources.")
	elseif(NOT IS_DIRECTORY "${QMLIB_SOURCE_PATH}")
	    message(FATAL_ERROR "QMLIB_SOURCE_PATH ('${QMLIB_SOURCE_PATH}') is not a valid directory.")
	endif()

	add_subdirectory(${QMLIB_SOURCE_PATH} ${CMAKE_CURRENT_BINARY_DIR}/qmlib)
else()
	# Specify the path to the installed library and headers
	set(QMLIB_DIR "/tmp/qmlib")

	if(EXISTS "${QMLIB_DIR}")
	    message(STATUS "QMLIB_DIR already exists at ${QMLIB_DIR}, skipping download.")
	else()
	    if(APPLE)
		set(QMLDIR_URL "https://github.com/zimmldev/qmlib-release/releases/download/release%2F1.0.0/qmlib-1.0.0-macos.zip")
	    elseif(UNIX AND NOT APPLE)
		set(QMLDIR_URL "https://github.com/zimmldev/qmlib-release/releases/download/release%2F1.0.0/qmlib-1.0.0-ubuntu.zip")
	    else()
		message(FATAL_ERROR "Unsupported platform: QMLib only supports macOS and Linux currently.")
	    endif()

	    set(QMLIB_ZIP "${CMAKE_BINARY_DIR}/qmlib.zip")

	    message(STATUS "Downloading QMLib from ${QMLDIR_URL} ...")
	    file(DOWNLOAD
		"${QMLDIR_URL}"
		"${QMLIB_ZIP}"
		SHOW_PROGRESS
		STATUS download_status
		LOG download_log)

	    list(GET download_status 0 status_code)
	    if(NOT status_code EQUAL 0)
		message(FATAL_ERROR "Failed to download QMLib: ${download_log}")
	    endif()

	    message(STATUS "Extracting QMLib to ${QMLIB_DIR} ...")
	    file(MAKE_DIRECTORY "${QMLIB_DIR}")

	    file(ARCHIVE_EXTRACT
		    INPUT ${QMLIB_ZIP}
		    DESTINATION ${QMLIB_DIR}
	    )

	    file(REMOVE "${QMLIB_ZIP}")
	    message(STATUS "QMLib setup completed.")
	endif()

	add_definitions(-DQMLIB_IMPORT_PATH=\"${QMLIB_DIR}/qml\")

	# Add the directory containing the installed cmake configuration or manually set the include path and library
	find_package(QMLib REQUIRED
		PATHS "${QMLIB_DIR}/lib/cmake"
		NO_DEFAULT_PATH)

	message("Using QMLib version: ${QMLib_VERSION}")

	##### SIGNATURE
	set(PYTHON_EXECUTABLE /opt/homebrew/bin/python3)

	set(LICENSE_KEY "<your license key>" CACHE STRING "License key to validate" FORCE)
	set(VALIDATE_SCRIPT "${CMAKE_CURRENT_SOURCE_DIR}/validate_and_sign.py")

	# Run the script and capture the output (signature)
	execute_process(
	    COMMAND ${CMAKE_COMMAND} -E env ${PYTHON_EXECUTABLE} ${VALIDATE_SCRIPT} ${LICENSE_KEY} ${QMLib_VERSION}
	    RESULT_VARIABLE _result
	    OUTPUT_VARIABLE _signature
	    ERROR_VARIABLE _err
	    OUTPUT_STRIP_TRAILING_WHITESPACE
	)

	if(NOT _result EQUAL 0)
	    message(STATUS "License validation failed: ${_err}")
	endif()

	message(STATUS "License validated successfully. Signature: ${_signature}")

	# Store signature in a CMake variable for later use
	set(LICENSE_SIGNATURE "${_signature}" CACHE INTERNAL "Generated license signature")

	add_definitions(-DQMLIB_KEY="${LICENSE_KEY}")
	add_definitions(-DQMLIB_SIGNATURE="${LICENSE_SIGNATURE}")
	#####
endif()

add_subdirectory(sources)
