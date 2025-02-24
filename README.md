# I2C-Mega-USB ATmega32U4 firmware build via GitHub actions

## Cheap and simple I²C to USB interface

Attach any I2C clients (thermo sensor, AD converter, display, relay driver, ...) to your PC via USB ... quick, easy and cheap! Drivers for Linux, Windows and MacOS available.

The i2c-tiny-usb project is an open source/open hardware project. The goal of i2c-tiny-usb is to provide a cheap generic i2c interface to be attached to the USB. It is meant as a replacement for those simple and cheap printer port to I2C adapters. A USB solution has several advantages incl. the built-in power supply and a more future proof interface. Furthermore no cpu intense bitbanging is required on the host side. This USB solution even requires less parts than some printer port solutions.

I2C-Mega-USB is a compatible clone of Till Harbaum’s i2c-tiny-usb. The firmware has no software in common with Till’s implementation but is compatible with the i2c-tiny-usb driver found in the mainline Linux kernel. As a result it will work out of the box without requiring any special software on the host computer. (Even these texts are shamelessly ripped from i2c-tiny-usb and i2c-star, which is a similar project for STM32)

I2C-Mega-USB utilizes ATmega32U4 with hardware I2C and USB, which should be better than the original bitbang I2C and software USB.

## Hardware setup

## Loading Firmware

## If you wish to compile yourself

- Install avr-gcc compiler toolchain and avrdude.
On Debian:
```
sudo apt-get update
sudo apt-get -y install gcc-avr binutils-avr avrdude avr-libc i2c-tools
```
- Clone this repo:
```
git clone https://github.com/bareboat-necessities/bbn-i2c-over-usb
```
- Fetch the libraries:
```
cd bbn-i2c-over-usb; git submodule update --init --recursive
```
- Build the firmware:
```
make
```

I2CUSB.hex is the firmware file you flash with avrdude.


## Examples

Note that the ```i2c_dev``` kernel module needs to be loaded before using any of the
```i2c-tools``` utilities.

```
$ i2cdetect -l
...
i2c-13	i2c       	i2c-tiny-usb at bus 003 device 002	I2C adapter
$ i2cdetect -y 13
```



## Credits
* I2C-Mega-USB [https://github.com/kasbert/I2C-Mega-USB]
* i2c-tiny-usb. [https://github.com/harbaum/I2C-Tiny-USB]
* LUFA - The Lightweight USB Framework for AVRs [https://github.com/abcminiuser/lufa/]
* Arduino Core Two Wire Interface [https://github.com/arduino/ArduinoCore-avr/blob/master/libraries/Wire/src/utility/twi.c]
* i2c-star [https://github.com/daniel-thompson/i2c-star]
