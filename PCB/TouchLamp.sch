EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:TouchLamp-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATTINY2313-P IC1
U 1 1 58A03B90
P 6550 3700
F 0 "IC1" H 5600 4700 50  0000 C CNN
F 1 "ATTINY2313-P" H 7350 2800 50  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm_Socket" H 6550 3700 50  0000 C CIN
F 3 "" H 6550 3700 50  0000 C CNN
	1    6550 3700
	1    0    0    -1  
$EndComp
$Comp
L LM7805CT U1
U 1 1 58A03CD1
P 3650 1950
F 0 "U1" H 3450 2150 50  0000 C CNN
F 1 "LM78L05" H 3650 2150 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 3650 2050 50  0000 C CIN
F 3 "" H 3650 1950 50  0000 C CNN
	1    3650 1950
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 58A03D67
P 4150 2100
F 0 "C2" H 4175 2200 50  0000 L CNN
F 1 "100n" H 4175 2000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4188 1950 50  0001 C CNN
F 3 "" H 4150 2100 50  0000 C CNN
	1    4150 2100
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58A03E2E
P 5200 2600
F 0 "C3" H 5225 2700 50  0000 L CNN
F 1 "10p" H 5225 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5238 2450 50  0001 C CNN
F 3 "" H 5200 2600 50  0000 C CNN
	1    5200 2600
	-1   0    0    1   
$EndComp
$Comp
L GNDREF #PWR01
U 1 1 58A04281
P 3150 2400
F 0 "#PWR01" H 3150 2150 50  0001 C CNN
F 1 "GNDREF" H 3150 2250 50  0000 C CNN
F 2 "" H 3150 2400 50  0000 C CNN
F 3 "" H 3150 2400 50  0000 C CNN
	1    3150 2400
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR02
U 1 1 58A04392
P 6550 4750
F 0 "#PWR02" H 6550 4500 50  0001 C CNN
F 1 "GNDREF" H 6550 4600 50  0000 C CNN
F 2 "" H 6550 4750 50  0000 C CNN
F 3 "" H 6550 4750 50  0000 C CNN
	1    6550 4750
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 58A0449D
P 5000 2100
F 0 "R3" V 5080 2100 50  0000 C CNN
F 1 "1M" V 5000 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4930 2100 50  0001 C CNN
F 3 "" H 5000 2100 50  0000 C CNN
	1    5000 2100
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 58A044FF
P 4800 2100
F 0 "R6" V 4880 2100 50  0000 C CNN
F 1 "1M" V 4800 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4730 2100 50  0001 C CNN
F 3 "" H 4800 2100 50  0000 C CNN
	1    4800 2100
	-1   0    0    1   
$EndComp
$Comp
L GNDREF #PWR03
U 1 1 58A04606
P 5200 2800
F 0 "#PWR03" H 5200 2550 50  0001 C CNN
F 1 "GNDREF" H 5200 2650 50  0000 C CNN
F 2 "" H 5200 2800 50  0000 C CNN
F 3 "" H 5200 2800 50  0000 C CNN
	1    5200 2800
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 58A04952
P 5150 3200
F 0 "R4" V 5230 3200 50  0000 C CNN
F 1 "1K" V 5150 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5080 3200 50  0001 C CNN
F 3 "" H 5150 3200 50  0000 C CNN
	1    5150 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 58A04A05
P 4550 3400
F 0 "R5" V 4450 3300 50  0000 C CNN
F 1 "1K" V 4550 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4480 3400 50  0001 C CNN
F 3 "" H 4550 3400 50  0000 C CNN
	1    4550 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 58A05080
P 8900 4300
F 0 "R2" V 8800 4200 50  0000 C CNN
F 1 "680R" V 8900 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8830 4300 50  0001 C CNN
F 3 "" H 8900 4300 50  0000 C CNN
	1    8900 4300
	0    -1   -1   0   
$EndComp
$Comp
L BC817-40 Q1
U 1 1 58A05166
P 9300 4300
F 0 "Q1" H 9500 4375 50  0000 L CNN
F 1 "BC817-40" H 9500 4300 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9500 4225 50  0000 L CIN
F 3 "" H 9300 4300 50  0000 L CNN
	1    9300 4300
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR04
U 1 1 58A051F9
P 9400 4600
F 0 "#PWR04" H 9400 4350 50  0001 C CNN
F 1 "GNDREF" H 9400 4450 50  0000 C CNN
F 2 "" H 9400 4600 50  0000 C CNN
F 3 "" H 9400 4600 50  0000 C CNN
	1    9400 4600
	1    0    0    -1  
$EndComp
NoConn ~ 7700 3800
NoConn ~ 7700 3300
NoConn ~ 7700 3200
$Comp
L R R1
U 1 1 58A05C5B
P 5400 2100
F 0 "R1" V 5480 2100 50  0000 C CNN
F 1 "10K" V 5400 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5330 2100 50  0001 C CNN
F 3 "" H 5400 2100 50  0000 C CNN
	1    5400 2100
	1    0    0    -1  
$EndComp
$Comp
L GNDREF #PWR05
U 1 1 58A06976
P 9000 1700
F 0 "#PWR05" H 9000 1450 50  0001 C CNN
F 1 "GNDREF" H 9000 1550 50  0000 C CNN
F 2 "" H 9000 1700 50  0000 C CNN
F 3 "" H 9000 1700 50  0000 C CNN
	1    9000 1700
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58A95423
P 3150 2100
F 0 "C1" H 3175 2200 50  0000 L CNN
F 1 "4u7" H 3175 2000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3188 1950 50  0001 C CNN
F 3 "" H 3150 2100 50  0000 C CNN
	1    3150 2100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P3
U 1 1 58A9580F
P 3250 3350
F 0 "P3" H 3250 3500 50  0000 C CNN
F 1 "Sensor" V 3350 3350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x02_Pitch2.54mm" H 3250 3350 50  0001 C CNN
F 3 "" H 3250 3350 50  0000 C CNN
	1    3250 3350
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X09 P1
U 1 1 58A97BC7
P 8300 1300
F 0 "P1" H 8300 1800 50  0000 C CNN
F 1 "PWR_LED_ISP" V 8400 1300 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x09_Pitch2.54mm" H 8300 1300 50  0001 C CNN
F 3 "" H 8300 1300 50  0000 C CNN
	1    8300 1300
	0    1    -1   0   
$EndComp
NoConn ~ 7700 4300
NoConn ~ 7700 3000
NoConn ~ 7700 2900
NoConn ~ 7700 4400
NoConn ~ 7700 4100
NoConn ~ 7700 4200
NoConn ~ 7700 3900
Wire Wire Line
	3150 2250 3150 2400
Wire Wire Line
	3650 2350 3650 2200
Connection ~ 3650 2350
Wire Wire Line
	6550 1900 6550 2600
Connection ~ 3150 1900
Connection ~ 3150 2350
Wire Wire Line
	6550 4750 6550 4700
Wire Wire Line
	9400 4600 9400 4500
Wire Wire Line
	4150 2350 4150 2250
Wire Wire Line
	4150 1950 4150 1900
Connection ~ 4150 1900
Wire Wire Line
	5400 1950 5400 1900
Connection ~ 5400 1900
Wire Wire Line
	5400 2250 5400 2900
Wire Wire Line
	8200 1500 8200 3400
Wire Wire Line
	8200 3400 7700 3400
Wire Wire Line
	8100 1500 8100 3500
Wire Wire Line
	8100 3500 7700 3500
Wire Wire Line
	8000 1500 8000 3600
Wire Wire Line
	8000 3600 7700 3600
Wire Wire Line
	9050 4300 9100 4300
Wire Wire Line
	3150 1600 3150 1950
Wire Wire Line
	3150 1900 3250 1900
Wire Wire Line
	3150 1600 8500 1600
Wire Wire Line
	8300 1600 8300 1500
Connection ~ 8300 1600
Wire Wire Line
	3150 2350 4150 2350
Wire Wire Line
	7900 1500 7900 2550
Wire Wire Line
	9400 1600 9400 4100
Wire Wire Line
	8500 1600 8500 1500
Wire Wire Line
	8400 1500 8400 1700
Wire Wire Line
	8400 1700 9000 1700
Wire Wire Line
	8600 1600 9400 1600
Wire Wire Line
	8600 1600 8600 1500
Wire Wire Line
	8700 1500 8700 1700
Connection ~ 8700 1700
Wire Wire Line
	7900 2550 5400 2550
Connection ~ 5400 2550
Wire Wire Line
	7700 3100 7900 3100
Wire Wire Line
	7900 3100 7900 4300
Wire Wire Line
	7900 4300 8750 4300
Wire Wire Line
	5300 3200 5400 3200
Wire Wire Line
	5000 2250 5000 3200
Wire Wire Line
	5000 1950 5000 1900
Connection ~ 5000 1900
Wire Wire Line
	5200 2450 5200 2350
Wire Wire Line
	5200 2350 5000 2350
Connection ~ 5000 2350
Wire Wire Line
	5200 2800 5200 2750
Wire Wire Line
	4700 3400 5400 3400
Wire Wire Line
	4800 1950 4800 1900
Connection ~ 4800 1900
Wire Wire Line
	4800 2250 4800 3400
Wire Wire Line
	4050 1900 6550 1900
Wire Wire Line
	3450 3300 3550 3300
Wire Wire Line
	3550 3300 3550 3400
Wire Wire Line
	3450 3400 4400 3400
Connection ~ 3550 3400
Connection ~ 4800 3400
$EndSCHEMATC
