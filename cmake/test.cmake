include(CMakeParseArguments)

function(add_unit_test)
	set(oneValueArgs TARGET)
	set(multiValueArgs LINK SOURCES LINK_DIRECTORIES EXTRA_ARGUMENTS ENVIRONMENT_ARGUMENTS)

	cmake_parse_arguments(ADD_EXE "${options}" "${oneValueArgs}"
						  "${multiValueArgs}" ${ARGN} )

	if (NOT ANDROID AND NOT TIZEN)
		find_package(Qt${QT_VERSION_MAJOR}Test REQUIRED)

		add_executable(${ADD_EXE_TARGET} ${ADD_EXE_SOURCES})

		add_test(NAME ${ADD_EXE_TARGET}
					COMMAND ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${ADD_EXE_TARGET} ${ADD_EXE_EXTRA_ARGUMENTS})

		if (ADD_EXE_LINK_DIRECTORIES)
			add_custom_command(TARGET ${ADD_EXE_TARGET}
							   POST_BUILD
							   COMMENT "COPY ${ADD_EXE_LINK_DIRECTORIES} to ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}"
							   COMMAND ${CMAKE_COMMAND} -E copy_directory
										${ADD_EXE_LINK_DIRECTORIES}
										${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
		endif()

		if (ADD_EXE_ENVIRONMENT_ARGUMENTS)
			set_tests_properties(${ADD_EXE_TARGET} PROPERTIES
								ENVIRONMENT
									${ADD_EXE_ENVIRONMENT_ARGUMENTS})
		endif ()

		target_link_libraries(${ADD_EXE_TARGET}
								${ADD_EXE_LINK}
								Qt${QT_VERSION_MAJOR}::Test)
	endif()
endfunction()
