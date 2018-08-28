cmake_minimum_required(VERSION 3.6)

# Set up the toolchain
set(CMAKE_TOOLCHAIN_FILE "../CMake/arm.cmake")
set(TOOLCHAIN_PATH "modify it to your path to toolchain ")
set(TOOLCHAIN TOOLCHAIN_GCC_ARM)

project(mbed-tests C CXX ASM)

# Start mbed configuration
include("CMake/mbed_config.cmake")

# Finally, set up the project to use mbed_os
include("CMake/mbed_arm.cmake")

mbed_executable(test SOURCES main.cpp)
