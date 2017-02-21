# TouchLamp

This is the PCB and Firmware for an LED lamp acivated by a touch on the sensor. 

The firmware is written using Eclipse and AVR toolchain. I used AtTiny2313, but you can use any Atmel MCU with at least 1KB of flash.

The sensor can be a piece of metal (preferably isolated with paint) size of a couple of sqare centimeters. The size is not critical. 
I have used a piece of copper 1x1cm and also 3x3cm. The firmware automatically calibrates at startup.

When you hold your finger on the sensor, the light intensity increases. If you touch it shortly, the light toggles on/off.
The preset light intensity is saved in the EEPROM so it does not get forgotten through power failures.

The touch is detected through changes in the capacity by measuring the time it takes to charge the capacitor, so you should not use long wires to connect the sensor.
Using a coaxial cable would increase minimum capacity and decrease change in capacity. Sensitivity can be adjusted by changing the "DETECT_COEF".
The length of the sensor wire should not exceed 10cm. There is also a fixed capacity which is used as a reference because the threashold of logic levels changes
as the controller operates.