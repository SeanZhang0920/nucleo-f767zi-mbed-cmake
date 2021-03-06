SET(CMAKE_SYSTEM_NAME Generic)
SET(CMAKE_SYSTEM_VERSION 1)

# specify the cross compiler
set(CMAKE_C_COMPILER "C:/Program Files (x86)/GNU Tools ARM Embedded/6 2017-q2-update/bin/arm-none-eabi-gcc.exe")
set(CMAKE_CXX_COMPILER "C:/Program Files (x86)/GNU Tools ARM Embedded/6 2017-q2-update/bin/arm-none-eabi-g++.exe")

SET(COMMON_FLAGS "--specs=nosys.specs")
SET(CMAKE_CXX_FLAGS "${COMMON_FLAGS}" CACHE STRING "" FORCE)
SET(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS}" CACHE STRING "" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "-Wl,-gc-sections " CACHE STRING "" FORCE)
