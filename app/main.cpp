#include <avr/io.h>
#include "blink.h"
#include "wait.h"

int main()
{
    CLed led(&PORTB, &DDRB, PINB1);

    while(1)
    {
        led.toggle();
        wait(500);
    }
}