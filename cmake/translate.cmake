function(setLanguages languages)
	set(translated_modules "" CACHE INTERNAL "translation")
	set(translated_targets "" CACHE INTERNAL "translation target")
	set(translated_languages ${languages} CACHE INTERNAL "translation languages")
endfunction()

function(translate _qm_files _sourceDir _parent)
	if (NOT TIZEN)
		find_package(QT NAMES Qt6 Qt5 COMPONENTS LinguistTools REQUIRED)
		find_package(Qt${QT_VERSION_MAJOR} COMPONENTS LinguistTools REQUIRED)

		file(GLOB_RECURSE translation_qml "${_sourceDir}/*.qml")
		file(GLOB_RECURSE translation_source "${_sourceDir}/*.cpp")
		file(GLOB_RECURSE translation_headers "${_sourceDir}/*.h")

		get_filename_component(_name ${CMAKE_CURRENT_SOURCE_DIR} NAME)

		# First copy all translation files in binary
		file(GLOB files "${CMAKE_CURRENT_SOURCE_DIR}/lang/*.ts")
		foreach(file ${files})
			file(COPY ${file} DESTINATION ${CMAKE_BINARY_DIR}/temp/ts/${_name})
		endforeach()

		# Then use copies of files
		file(GLOB copies "${CMAKE_BINARY_DIR}/temp/ts/${_name}/*.ts")
		foreach(file ${copies})
			set(ts_files ${ts_files} ${file})
		endforeach()

		set_source_files_properties(${ts_files} PROPERTIES OUTPUT_LOCATION ${CMAKE_BINARY_DIR}/temp/lang/${_name})

		set(to_translate ${translation_qml}
			${translation_source}
			${translation_headers})

		qt_create_translation(
			${_qm_files}
			${to_translate}
			${ts_files}
			OPTIONS -no-obsolete
		)

		set(${_qm_files}
			${${_qm_files}}
			PARENT_SCOPE)

		set(translated_modules ${_name} ${translated_modules} CACHE INTERNAL "translation")
		set(translated_targets ${translated_targets} ${_parent} CACHE INTERNAL "translation target")
	endif()
endfunction()
