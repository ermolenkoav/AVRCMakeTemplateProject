###### MCU options
set(AVR_UPLOADTOOL avrdude)
set(AVR_PROGRAMMER avarice)
set(AVR_UPLOADTOOL_PORT usb)
# AVR and fuses needs to be set
set(AVR_MCU atmega64)
set(AVR_H_FUSE 0xd9)
set(AVR_L_FUSE 0xc3)
set(MCU_SPEED "16000000UL")
