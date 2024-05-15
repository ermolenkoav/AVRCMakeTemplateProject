set(UTILITIES_SOURCE_CODE
        blink.cpp
        blink.h
        wait.cpp
        wait.h
        )

add_avr_library(UTILITIES ${UTILITIES_SOURCE_CODE})
