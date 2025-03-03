message(STATUS "Building for Linux")

# Architecture options
option(TARGET_LINUX_64 "Build for Linux 64-bit with GCC" OFF)
option(TARGET_LINUX_32 "Build for Linux 32-bit with GCC" OFF)

if(TARGET_LINUX_64)
    message(STATUS "Building for Linux 64-bit")
    set(CMAKE_SYSTEM_NAME Linux)
    set(EXECUTABLE_NAME "oc_linux64")
elseif(TARGET_LINUX_32)
    message(STATUS "Building for Linux 32-bit")
    set(CMAKE_SYSTEM_NAME Linux)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m32")  # Enable 32-bit mode
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m32")  # Enable 32-bit mode in C++
    set(EXECUTABLE_NAME "oc_linux32")
endif()

# Detect GLFW using pkg-config
find_package(PkgConfig REQUIRED)
pkg_check_modules(GLFW REQUIRED glfw3)

# Include directories and link libraries automatically
include_directories(${GLFW_INCLUDE_DIRS})
link_directories(${GLFW_LIBRARY_DIRS})

# Build executable
add_executable(opencraft ${SRC_FILES})

# Aplicar flags correctamente
target_compile_options(opencraft PRIVATE ${GLFW_CFLAGS})
target_link_options(opencraft PRIVATE ${GLFW_LDFLAGS})

# Linkear todas las dependencias encontradas por pkg-config
target_link_libraries(opencraft PRIVATE ${GLFW_LIBRARIES})
