##########################################################################
# include search paths
##########################################################################
include_directories(${CMAKE_SOURCE_DIR}/libraries)
include_directories(${CMAKE_SOURCE_DIR}/resources)
include_directories(${CMAKE_SOURCE_DIR}/utilities)

##########################################################################
# building library and application in their subdirectories
##########################################################################
add_subdirectory(libraries)
add_subdirectory(resources)
add_subdirectory(utilities)
add_subdirectory(app)

if(${ENABLE_UNIT_TESTS})
    add_subdirectory(Tests)
endif()
