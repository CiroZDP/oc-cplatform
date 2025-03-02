message(STATUS "Building for MS-DOS with DJGPP")

# Define GLFW root directory first
set(GLFW_DIR "${CMAKE_SOURCE_DIR}/glfw-unbounded")

# Define GLFW include directory
include_directories("${GLFW_DIR}/include")

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_C_COMPILER gcc)
set(EXECUTABLE_NAME "oc_msdos")
set(CMAKE_EXECUTABLE_SUFFIX ".exe")

# Build executable
add_executable(opencraft ${SRC_FILES} ${GLFW_DIR}/glfw.c)
