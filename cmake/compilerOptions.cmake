##########################################################################
# set compiler options for build types
##########################################################################
set(CMAKE_C_STANDARD 17)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_definitions("-DF_CPU=${MCU_SPEED}")
add_definitions("-fpack-struct")
add_definitions("-fshort-enums")
add_definitions("-Wall")
add_definitions("-pedantic")
add_definitions("-pedantic-errors")
add_definitions("-funsigned-char")
add_definitions("-funsigned-bitfields")
add_definitions("-ffunction-sections")
add_definitions("-c")
#add_compile_options(
#        -mmcu=${AVR_MCU} # MCU
#        -Os # optimize
#        -Wall # enable warnings
#        -Wno-main
#        -Wundef
#        -pedantic
#        -Werror
#        -Wfatal-errors
#        -Wl,--relax,--gc-sections
#        -g
#        -gdwarf-2
#        -funsigned-char # a few optimizations
#        -funsigned-bitfields
#        -fpack-struct
#        -fshort-enums
#        -ffunction-sections
#        -fdata-sections
#        -fno-split-wide-types
#        -fno-tree-scev-cprop
#)

##########################################################################
# compiler options for all build types
##########################################################################
if(CMAKE_BUILD_TYPE MATCHES Release)
    set(CMAKE_C_FLAGS_RELEASE "-Os")
    set(CMAKE_CXX_FLAGS_RELEASE "-Os")

    option(ENABLE_UNIT_TESTS "Unit testing included" OFF)
    option(WARNINGS_AS_ERRORS "Compiler warnings as errors" OFF)
    option(OPT_ASAN "Address Sanitizer" OFF)
endif(CMAKE_BUILD_TYPE MATCHES Release)

if(CMAKE_BUILD_TYPE MATCHES RelWithDebInfo)
    set(CMAKE_C_FLAGS_RELWITHDEBINFO "-Os -save-temps -g -gdwarf-3 -gstrict-dwarf")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-Os -save-temps -g -gdwarf-3 -gstrict-dwarf")
endif(CMAKE_BUILD_TYPE MATCHES RelWithDebInfo)

if(CMAKE_BUILD_TYPE MATCHES Debug)
    set(CMAKE_C_FLAGS_DEBUG "-O0 -save-temps -g -gdwarf-3 -gstrict-dwarf")
    set(CMAKE_CXX_FLAGS_DEBUG "-O0 -save-temps -g -gdwarf-3 -gstrict-dwarf")

    option(ENABLE_UNIT_TESTS "Unit testing included" OFF)
    option(WARNINGS_AS_ERRORS "Compiler warnings as errors" OFF)
    option(OPT_ASAN "Address Sanitizer" OFF)
endif(CMAKE_BUILD_TYPE MATCHES Debug)

##########################################################################
# some cmake cross-compile necessities
##########################################################################
set(CMAKE_FIND_ROOT_PATH "/opt/homebrew/opt/avr-gcc@14")

if(DEFINED ENV{AVR_FIND_ROOT_PATH})
    set(CMAKE_FIND_ROOT_PATH $ENV{AVR_FIND_ROOT_PATH})
endif(DEFINED ENV{AVR_FIND_ROOT_PATH})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# not added automatically, since CMAKE_SYSTEM_NAME is "generic"
set(CMAKE_SYSTEM_INCLUDE_PATH "${CMAKE_FIND_ROOT_PATH}/include")
set(CMAKE_SYSTEM_LIBRARY_PATH "${CMAKE_FIND_ROOT_PATH}/lib")

##########################################################################
# status messages for generating
##########################################################################
message(STATUS "Set CMAKE_FIND_ROOT_PATH to ${CMAKE_FIND_ROOT_PATH}")
message(STATUS "Set CMAKE_SYSTEM_INCLUDE_PATH to ${CMAKE_SYSTEM_INCLUDE_PATH}")
message(STATUS "Set CMAKE_SYSTEM_LIBRARY_PATH to ${CMAKE_SYSTEM_LIBRARY_PATH}")
