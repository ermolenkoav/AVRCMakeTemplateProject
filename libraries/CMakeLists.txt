set(LIBRARIES_SOURCE_CODE
        uart/uart.cpp
        uart/uart.h
)

add_avr_library(LIBRARIES ${LIBRARIES_SOURCE_CODE})
