cmake_minimum_required(VERSION 3.28)

include(cmake/mcuOptions.cmake REQUIRED)

include(cmake/cmake-avr/generic-gcc-avr.cmake REQUIRED)

project(rotor LANGUAGES CXX)

include(cmake/compilerOptions.cmake REQUIRED)

include(cmake/projectStructure.cmake REQUIRED)

include(cmake/buildCounter.cmake REQUIRED)

include(cmake/printInfo.cmake REQUIRED)
