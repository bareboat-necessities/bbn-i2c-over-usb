#!/bin/bash

# hold reset button while pluggin your Leonardo ATmega32U4 
# into USB until 3 yellow lights flash
# to enter bootloader mode

avrdude -p m32u4 -c avr109 -P /dev/ttyACM0 -U flash:w:./I2CUSB.hex 

