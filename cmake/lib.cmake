include(CMakeParseArguments)

function(add_lib)
	set(oneValueArgs TARGET NAMESPACE TYPE)
	set(multiValueArgs LINK SOURCES RESOURCES)
	set(ADD_LIB_TYPE SHARED)
	cmake_parse_arguments(ADD_LIB "${options}" "${oneValueArgs}"
						  "${multiValueArgs}" ${ARGN} )

	if ("${ADD_LIB_TYPE}" STREQUAL "")
		set(ADD_LIB_TYPE SHARED)
	endif()

	if (IOS)
		set(ADD_LIB_TYPE STATIC)
	elseif(EMSCRIPTEN)
		set(ADD_LIB_TYPE STATIC)
	endif()

	set(CMAKE_INCLUDE_CURRENT_DIR ON)

	if(ADD_LIB_RESOURCES)
		qt_add_resources(ADD_LIB_SOURCES ${ADD_LIB_RESOURCES})
	endif()

	qt_add_library(${ADD_LIB_TARGET} ${ADD_LIB_TYPE}
			  ${ADD_LIB_SOURCES}
	)
	add_library(${ADD_LIB_NAMESPACE}::${ADD_LIB_TARGET} ALIAS ${ADD_LIB_TARGET})

	include(GenerateExportHeader)
	generate_export_header(${ADD_LIB_TARGET}
							EXPORT_FILE_NAME ${ADD_LIB_TARGET}export.h)

	target_link_libraries(${ADD_LIB_TARGET}
						${ADD_LIB_LINK})

	target_include_directories(${ADD_LIB_TARGET}
								PUBLIC ${CMAKE_CURRENT_BINARY_DIR})
	target_include_directories(${ADD_LIB_TARGET}
								PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
endfunction()
