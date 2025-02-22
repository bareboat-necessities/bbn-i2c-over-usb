#!/bin/bash

# hold reset button while pluggin your MCU 
# into USB to enter bootloader mode

avrdude -p m32u4 -c avr109 -P /dev/ttyACM0 -U flash:w:/path/to/your/firmware.hex 
