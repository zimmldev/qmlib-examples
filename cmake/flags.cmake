if (EMSCRIPTEN)
	# Set the correct flags for linking
	message(STATUS "Building Emscripten, do not add custom flags")
else()
	# Enable compilation warning only for internal projects
	if (CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
		# using Clang
		message(STATUS "Using CLANG config")
		set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g")
		set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wmissing-field-initializers -Werror -Wextra -Wall -Wuninitialized -Wmissing-field-initializers -Weffc++ -Wignored-qualifiers")

		if (CMAKE_BUILD_TYPE STREQUAL "Debug" AND NOT ANDROID)
			message(STATUS "Using asan")
			set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -fsanitize=address")
			set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=address")
		else()
			message(STATUS "Not using asan")
		endif()
	elseif (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
		# using GCC
		message(STATUS "Using GCC config")
		set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g")
		set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wmissing-field-initializers -Werror -Wextra -Wall -Wuninitialized -Wmissing-field-initializers -Wignored-qualifiers")

		if (CMAKE_BUILD_TYPE STREQUAL "Debug" AND NOT ANDROID)
			message(STATUS "Using asan")
			set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -fsanitize=address")
			set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=address")
		else()
			message(STATUS "Not using asan")
		endif()
	elseif (CMAKE_CXX_COMPILER_ID STREQUAL "Intel")
		# using Intel C++
		message(STATUS "Using Intel config")
		set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -g")
		set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3")
	elseif (CMAKE_CXX_COMPILER_ID STREQUAL "MSVC")
		# using Visual Studio C++
		set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /Zi")
		set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE}/O2")
		message(STATUS "Using MSVC config")
	elseif(CMAKE_CXX_COMPILER_ID STREQUAL "AppleClang")
		message(STATUS "Using Apple config")

		# macOS specific configuration
		# Check if the Xcode version is 15
		if(${CMAKE_CXX_COMPILER_VERSION} VERSION_GREATER_EQUAL "16.0.0.0")
			# Add the -ld64 flag for macOS
			set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -ld_classic")
			set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -ld_classic")
		endif()
	endif()
endif()
