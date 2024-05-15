# Create target
add_avr_executable(${CMAKE_PROJECT_NAME} main.cpp)

#####################################################################
# libraries to link to
#####################################################################
target_link_libraries(
        ${CMAKE_PROJECT_NAME}-${AVR_MCU}.elf
        ${UTILITIES}
        ${LIBRARIES}
)


# Rename the output to .elf as we will create multiple files
set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES OUTPUT_NAME ${PRODUCT_NAME}-{CMAKE_BUILD_TYPE}.elf)
