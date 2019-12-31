#
#
# Project script for Tier2 (Example)
#
#
project($$template C CXX)

# Platform specific sources
# You can explicitly set platform sources using these
set(WINDOWS_SRCS	)
set(POSIX_SRCS	)

# Sources for any platform go into this var
set(SRCS	)

# Remove if needed, this is a glob operation
file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/ *.c *.cpp)
list(APPEND SRCS ${SOURCES})

# Preprocessor defs
set(DEFINES	)

# Platform-specific preprocessor defines
set(WIN32_DEFINES	)	
set(POSIX32_DEFINES	)
set(WIN64_DEFINES	)
set(POSIX64_DEFINES	)
set(WINDOWS_DEFINES	)
set(POSIX_DEFINES	)

# Defines for 32-bit or 64-bit platforms
set(PLATFORM_64BIT_DEFINES	)
set(PLATFORM_32BIT_DEFINES 	)

# Links dirs to search for link libs in
set(LINK_DIRS	)
set(WINDOWS_LINK_DIRS	)
set(POSIX_LINK_DIRS		)
set(WIN32_LINK_DIRS		)
set(WIN64_LINK_DIRS		)
set(POSIX32_LINK_DIRS	)
set(POSIX64_LINK_DIRS	)

# Generic libs to link against
set(LINK_LIBS	)

# Platform specific link libs
set(WIN32_LINK_LIBS		)
set(WIN64_LINK_LIBS		)
set(POSIX32_LINK_LIBS	)
set(POSIX64_LINK_LIBS	)

# Generic include dirs
set(INCLUDE_DIRS		${PUBLIC_INCLUDE}/tier2 ${PUBLIC_INCLUDE}/tier0)

# Platform specific includes
set(WIN32_INCLUDE_DIRS	)
set(WIN64_INCLUDE_DIRS	)
set(POSIX32_INCLUDE_DIRS	)
set(POSIX64_INCLUDE_DIRS	)

# Set the variable of target for stuff
set(TARGET $$template)

# Set the output file name
set(OUTPUT_FILE_NAME $$template)


#=========================================#
# Use these only for libraries, if you want
# to build an executable, use exe-base.cmake
#=========================================#
# If this is a shared lib
set(SHARED_LIB 0)

# If this is a static lib
set(STATIC_LIB 1)

# Include this to handle all the defines
include(${CMAKESCRIPTS_DIR}/library-base.cmake)
