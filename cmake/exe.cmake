include(CMakeParseArguments)

function(add_exe)
	set(options OPTIONAL FAST)
	set(oneValueArgs TARGET RENAME)
	set(multiValueArgs LINK SOURCES QML_FILES QML_DEPENDENCIES)
	cmake_parse_arguments(ADD_EXE "${options}" "${oneValueArgs}"
						  "${multiValueArgs}" ${ARGN} )

	cmake_policy(SET CMP0071 NEW)
	qt_policy(SET QTP0001 NEW)

	qt_add_executable(${ADD_EXE_TARGET}
			 ${ADD_EXE_SOURCES})

	if (QMLIB_STATIC)
		foreach(dep ${ADD_EXE_QML_DEPENDENCIES})
			string(TOLOWER ${dep} libname)
			set(pluginslink ${pluginslink} ${libname}plugin)
		endforeach()
	endif()

	target_link_libraries(${ADD_EXE_TARGET}
		PRIVATE
			${ADD_EXE_LINK}
			 ${pluginslink}
	)

	if (ADD_EXE_QML_FILES)
		qt_add_qml_module(${ADD_EXE_TARGET}
			URI ${ADD_EXE_TARGET}
			VERSION
				1.0
			QML_FILES
				${ADD_EXE_QML_FILES}
			DEPENDENCIES
				${ADD_EXE_QML_DEPENDECIES}
		)
	endif()

	qt_import_qml_plugins(${ADD_EXE_TARGET})
endfunction()
