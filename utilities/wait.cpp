#include <util/delay.h>
#include "wait.h"

void wait(int16_t time){
    _delay_ms(time);
}
