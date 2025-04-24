find_program(IWYU_PROGRAM NAMES iwyu)

if (IWYU_PROGRAM)
	message("IWYU found ${IWYU_PROGRAM}")
	option(USE_IWYU "Use Include What You Use" OFF)
	if (USE_IWYU)
		message(STATUS "IWYU is enabled")
		set(iwyu_args "${IWYU_PROGRAM};-Xiwyu;any;-Xiwyu;iwyu;-Xiwyu;args")
	
		set(CMAKE_CXX_INCLUDE_WHAT_YOU_USE "${iwyu_args}")
		set(CMAKE_C_INCLUDE_WHAT_YOU_USE "${iwyu_args}")
	endif()
endif()
