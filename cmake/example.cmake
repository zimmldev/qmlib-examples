include(CMakeParseArguments)

function(add_example)
	set(options OPTIONAL FAST)
	set(oneValueArgs TARGET RENAME)
	set(multiValueArgs LINK SOURCES QML_FILES RESOURCES WARNING_EXCEPTIONS QML_DEPENDENCIES)
	cmake_parse_arguments(ADD_EXE "${options}" "${oneValueArgs}"
						  "${multiValueArgs}" ${ARGN} )

	add_plugin(PLUGIN ${ADD_EXE_TARGET}
		    RESOURCES ${ADD_EXE_RESOURCES}
		    QML_DEPENDENCIES ${ADD_EXE_QML_DEPENDENCIES})
	add_exe(TARGET ${ADD_EXE_TARGET}
		QML_FILES ${ADD_EXE_QML_FILES}
		SOURCES ${ADD_EXE_SOURCES}
		QML_DEPENDENCIES ${ADD_EXE_QML_DEPENDENCIES}
				 ${ADD_EXE_TARGET}
		LINK
			QMLib::example
			${ADD_EXE_LINK})

	if (EMSCRIPTEN)
		set(INITIAL_MEMORY 32MB)
		set(MAXIMUM_MEMORY 128MB)

		target_compile_options(${ADD_EXE_TARGET} PRIVATE
		    -sINITIAL_MEMORY=${INITIAL_MEMORY}
		)

		target_link_options(${ADD_EXE_TARGET} PRIVATE
		    -sINITIAL_MEMORY=${INITIAL_MEMORY}
		)
	endif()

	if (BUILD_TESTING)
		add_qrc_quick_test(
			TARGET
				${ADD_EXE_TARGET}
			SOURCES
				${ADD_EXE_RESOURCES}
			QML_FILES
				${ADD_EXE_QML_FILES}
			QML_DEPENDENCIES
				${ADD_EXE_QML_DEPENDENCIES}
				${ADD_EXE_TARGET}
			WARNING_EXCEPTIONS
				${ADD_EXE_WARNING_EXCEPTIONS}
		)
	endif()
endfunction()
