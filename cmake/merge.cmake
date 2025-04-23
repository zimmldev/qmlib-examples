function(mergetranslations)
	if (NOT TIZEN)
		FILE(GLOB_RECURSE old_qm "${CMAKE_BINARY_DIR}/temp/lang/*.qm")

		# Merge translations
		foreach (module ${translated_modules})
			foreach (lang ${translated_languages})
				set(filetemp ${CMAKE_BINARY_DIR}/temp/lang/${module}/${lang}.qm)
				set_source_files_properties(filetemp PROPERTIES GENERATED TRUE)
				set(qm_to_merge ${qm_to_merge};${filetemp})
			endforeach(lang)
		endforeach(module)

		find_package(QT NAMES Qt6 Qt5 COMPONENTS LinguistTools REQUIRED)
		find_package(Qt${QT_VERSION_MAJOR} COMPONENTS LinguistTools REQUIRED)

		set(translation_temporary_dir ${CMAKE_BINARY_DIR}/temp/lang/merged)

		if (ANDROID)
			set(translation_output_dir ${INSTALL_ROOT}/assets/resources/lang)
		else()
			set(translation_output_dir ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/resources/lang)
		endif()

		file(MAKE_DIRECTORY ${translation_output_dir})
		file(MAKE_DIRECTORY ${translation_temporary_dir})

		# Groupe by languages
		foreach(file ${qm_to_merge})
			get_filename_component(_name ${file} NAME_WE)
			set(${_name} ${${_name}} ${file})

			if (NOT "${_name}" IN_LIST _translations)
				set(_translations ${_translations} ${_name})
			endif()
		endforeach(file)

		foreach (translation ${_translations})
			set(qm ${translation}.qm)
			set(files ${${translation}})

			add_custom_target(Merge${translation} ALL
								COMMENT "Merging translations"
								DEPENDS ${old_qm})

			add_dependencies(Merge${translation}
							${translated_targets})

			add_custom_command(TARGET Merge${translation} #_convert${translation}
				POST_BUILD
				COMMAND Qt${QT_VERSION_MAJOR}::lconvert
				ARGS -i ${files} -o ${translation_temporary_dir}/${qm}
				VERBATIM
			)
		endforeach()

		foreach (loop_var ${translated_languages})
			add_custom_target(Copy${loop_var} ALL
								COMMENT "Copy translation"
								DEPENDS Merge${loop_var})
					# finally copy everything in a common folder
					add_custom_command(
							TARGET Copy${loop_var}
							POST_BUILD
							COMMAND
					${CMAKE_COMMAND} -E copy
							${translation_temporary_dir}/${loop_var}.qm
							${translation_output_dir}/${loop_var}.qm)
		endforeach(loop_var)
	endif()
endfunction()
