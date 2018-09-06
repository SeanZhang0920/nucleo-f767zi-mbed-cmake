cmake_minimum_required(VERSION 3.6)

# Set up the toolchain
set(CMAKE_TOOLCHAIN_FILE "../CMake/arm.cmake")
set(TOOLCHAIN_PATH "C:/Program Files (x86)/GNU Tools ARM Embedded/6 2017-q2-update/bin/")
set(TOOLCHAIN TOOLCHAIN_GCC_ARM)

project(mbed-tests C CXX ASM)

# Start mbed configuration
include("CMake/mbed_config.cmake")

# Finally, set up the project to use mbed_os
include("CMake/mbed_arm.cmake")

include("../iothub_client_sample_mqtt.c")
include("../iothub_client_sample_mqtt.h")

link_libraries("../azure-iot-c-sdk.a")

mbed_executable(test SOURCES main.cpp)
