EESchema Schematic File Version 4
LIBS:Board-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5700 3000 2    50   Input ~ 0
DTR
Wire Wire Line
	4650 2900 4650 3000
Connection ~ 4650 3000
Wire Wire Line
	4650 3000 4650 3100
Wire Wire Line
	5300 3000 5700 3000
Wire Wire Line
	4650 3500 4650 3650
Wire Wire Line
	1200 1900 1200 1650
Wire Wire Line
	2850 750  2850 950 
Wire Wire Line
	2950 1050 2950 950 
Wire Wire Line
	2950 950  2850 950 
Connection ~ 2850 950 
Wire Wire Line
	2850 950  2850 1050
Wire Wire Line
	2850 4300 2850 4050
Wire Wire Line
	1200 1350 1200 1450
Wire Wire Line
	5100 3000 4650 3000
Text GLabel 4050 2750 2    50   Input ~ 0
SCL
$Comp
L Rev_1_lib:ATmega168PA-AU U1
U 1 1 5D017478
P 2850 2550
F 0 "U1" H 2400 950 50  0000 C CNN
F 1 "ATmega168PA-AU" H 2400 1050 50  0000 C CNN
F 2 "Part_footprints:TQFP-32_7x7mm_P0.8mm" H 2850 2550 50  0001 C CIN
F 3 "" H 2850 2550 50  0001 C CNN
	1    2850 2550
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:GND #PWR0101
U 1 1 5D0191E4
P 4650 3650
F 0 "#PWR0101" H 4650 3400 50  0001 C CNN
F 1 "GND" H 4655 3477 50  0000 C CNN
F 2 "" H 4650 3650 50  0001 C CNN
F 3 "" H 4650 3650 50  0001 C CNN
	1    4650 3650
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:GND #PWR0102
U 1 1 5D019EAD
P 2850 4300
F 0 "#PWR0102" H 2850 4050 50  0001 C CNN
F 1 "GND" H 2855 4127 50  0000 C CNN
F 2 "" H 2850 4300 50  0001 C CNN
F 3 "" H 2850 4300 50  0001 C CNN
	1    2850 4300
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:GND #PWR0103
U 1 1 5D01A9E3
P 1200 1900
F 0 "#PWR0103" H 1200 1650 50  0001 C CNN
F 1 "GND" H 1205 1727 50  0000 C CNN
F 2 "" H 1200 1900 50  0001 C CNN
F 3 "" H 1200 1900 50  0001 C CNN
	1    1200 1900
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Capacitor C4
U 1 1 5D01C87C
P 5200 3000
F 0 "C4" V 4971 3000 50  0000 C CNN
F 1 "0.1uF" V 5062 3000 50  0000 C CNN
F 2 "Part_footprints:C_1206_3216Metric" H 5200 3000 50  0001 C CNN
F 3 "" H 5200 3000 50  0001 C CNN
	1    5200 3000
	0    1    1    0   
$EndComp
$Comp
L Rev_1_lib:Capacitor C1
U 1 1 5D01D179
P 1200 1550
F 0 "C1" H 1400 1500 50  0000 R CNN
F 1 "0.1uF" H 1500 1600 50  0000 R CNN
F 2 "Part_footprints:C_1206_3216Metric" H 1200 1550 50  0001 C CNN
F 3 "" H 1200 1550 50  0001 C CNN
	1    1200 1550
	-1   0    0    1   
$EndComp
$Comp
L Rev_1_lib:Resistor R6
U 1 1 5D01E861
P 4650 2800
F 0 "R6" H 4709 2846 50  0000 L CNN
F 1 "10k" H 4709 2755 50  0000 L CNN
F 2 "Part_footprints:R_1206_3216Metric" H 4650 2800 50  0001 C CNN
F 3 "" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:+5V #PWR0104
U 1 1 5D01EE5D
P 4650 2150
F 0 "#PWR0104" H 4650 2000 50  0001 C CNN
F 1 "+5V" H 4665 2323 50  0000 C CNN
F 2 "" H 4650 2150 50  0001 C CNN
F 3 "" H 4650 2150 50  0001 C CNN
	1    4650 2150
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:+5V #PWR0105
U 1 1 5D01F36F
P 2850 750
F 0 "#PWR0105" H 2850 600 50  0001 C CNN
F 1 "+5V" H 2865 923 50  0000 C CNN
F 2 "" H 2850 750 50  0001 C CNN
F 3 "" H 2850 750 50  0001 C CNN
	1    2850 750 
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Push_Button SW2
U 1 1 5D020822
P 4650 3300
F 0 "SW2" V 4604 3448 50  0000 L CNN
F 1 "Reset" V 4695 3448 50  0000 L CNN
F 2 "Part_footprints:Right_angle_momentary_button" H 4650 3500 50  0001 C CNN
F 3 "" H 4650 3500 50  0001 C CNN
	1    4650 3300
	0    1    1    0   
$EndComp
$Comp
L Rev_1_lib:Crystal_Small Y1
U 1 1 5D024AAD
P 4950 1400
F 0 "Y1" V 4904 1488 50  0000 L CNN
F 1 "16MHz" V 4995 1488 50  0000 L CNN
F 2 "Part_footprints:HC49S_SMD_Crystal" H 4950 1400 50  0001 C CNN
F 3 "" H 4950 1400 50  0001 C CNN
	1    4950 1400
	0    1    1    0   
$EndComp
$Comp
L Rev_1_lib:Capacitor C5
U 1 1 5D026629
P 5400 1150
F 0 "C5" V 5171 1150 50  0000 C CNN
F 1 "20pF" V 5262 1150 50  0000 C CNN
F 2 "Part_footprints:C_1206_3216Metric" H 5400 1150 50  0001 C CNN
F 3 "" H 5400 1150 50  0001 C CNN
	1    5400 1150
	0    1    1    0   
$EndComp
$Comp
L Rev_1_lib:Capacitor C6
U 1 1 5D026E0D
P 5400 1650
F 0 "C6" V 5171 1650 50  0000 C CNN
F 1 "20pF" V 5262 1650 50  0000 C CNN
F 2 "Part_footprints:C_1206_3216Metric" H 5400 1650 50  0001 C CNN
F 3 "" H 5400 1650 50  0001 C CNN
	1    5400 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 1300 4950 1150
Wire Wire Line
	4950 1150 5300 1150
Wire Wire Line
	4950 1650 4950 1500
Wire Wire Line
	4950 1650 5300 1650
Wire Wire Line
	5500 1150 6000 1150
Wire Wire Line
	6000 1150 6000 1650
Wire Wire Line
	5500 1650 6000 1650
Wire Wire Line
	6000 1650 6000 1800
$Comp
L Rev_1_lib:GND #PWR0106
U 1 1 5D02DA7D
P 6000 1800
F 0 "#PWR0106" H 6000 1550 50  0001 C CNN
F 1 "GND" H 6005 1627 50  0000 C CNN
F 2 "" H 6000 1800 50  0001 C CNN
F 3 "" H 6000 1800 50  0001 C CNN
	1    6000 1800
	1    0    0    -1  
$EndComp
Connection ~ 6000 1650
Text GLabel 4050 2650 2    50   Input ~ 0
SDA
$Comp
L Rev_1_lib:+5V #PWR0107
U 1 1 5D036037
P 1800 2650
F 0 "#PWR0107" H 1800 2500 50  0001 C CNN
F 1 "+5V" H 1815 2823 50  0000 C CNN
F 2 "" H 1800 2650 50  0001 C CNN
F 3 "" H 1800 2650 50  0001 C CNN
	1    1800 2650
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Capacitor C2
U 1 1 5D0371C7
P 1800 3000
F 0 "C2" H 1892 3046 50  0000 L CNN
F 1 "0.1uF" H 1892 2955 50  0000 L CNN
F 2 "Part_footprints:C_1206_3216Metric" H 1800 3000 50  0001 C CNN
F 3 "" H 1800 3000 50  0001 C CNN
	1    1800 3000
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:GND #PWR0108
U 1 1 5D0378CB
P 1800 3350
F 0 "#PWR0108" H 1800 3100 50  0001 C CNN
F 1 "GND" H 1805 3177 50  0000 C CNN
F 2 "" H 1800 3350 50  0001 C CNN
F 3 "" H 1800 3350 50  0001 C CNN
	1    1800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2650 1800 2900
Wire Wire Line
	1800 3350 1800 3100
$Comp
L Rev_1_lib:GND #PWR0109
U 1 1 5D03AB26
P 6550 2050
F 0 "#PWR0109" H 6550 1800 50  0001 C CNN
F 1 "GND" H 6555 1877 50  0000 C CNN
F 2 "" H 6550 2050 50  0001 C CNN
F 3 "" H 6550 2050 50  0001 C CNN
	1    6550 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 1850 6550 2050
Text GLabel 4050 3050 2    50   Input ~ 0
TX
Text GLabel 4050 3150 2    50   Input ~ 0
RX
Wire Wire Line
	4050 2850 4050 2900
Wire Wire Line
	4050 2900 4450 2900
Wire Wire Line
	4450 2900 4450 3000
Wire Wire Line
	4450 3000 4650 3000
Wire Wire Line
	3450 2850 4050 2850
Wire Wire Line
	3450 2750 3750 2750
Wire Wire Line
	4050 2650 3650 2650
Wire Wire Line
	3450 3050 4050 3050
Wire Wire Line
	3450 3150 4050 3150
$Comp
L Rev_1_lib:CH340B UART1
U 1 1 5D0412E5
P 8100 2300
F 0 "UART1" H 8300 3286 60  0000 C CNN
F 1 "CH340B" H 8300 3180 60  0000 C CNN
F 2 "Part_footprints:SOP-16_150MIL" H 7750 2300 60  0001 C CNN
F 3 "" H 7750 2300 60  0001 C CNN
	1    8100 2300
	1    0    0    -1  
$EndComp
Text GLabel 7250 2000 0    50   Input ~ 0
TX
Text GLabel 7250 2150 0    50   Input ~ 0
RX
Wire Wire Line
	7250 2000 7750 2000
Wire Wire Line
	7750 2150 7250 2150
$Comp
L Rev_1_lib:+5V #PWR0110
U 1 1 5D044E73
P 10250 1500
F 0 "#PWR0110" H 10250 1350 50  0001 C CNN
F 1 "+5V" H 10265 1673 50  0000 C CNN
F 2 "" H 10250 1500 50  0001 C CNN
F 3 "" H 10250 1500 50  0001 C CNN
	1    10250 1500
	1    0    0    -1  
$EndComp
Text GLabel 9250 2300 2    50   Input ~ 0
DTR
Text GLabel 7400 2450 0    50   Input ~ 0
DATA+
Text GLabel 7400 2600 0    50   Input ~ 0
DATA-
Wire Wire Line
	6550 1850 7750 1850
Wire Wire Line
	7400 2450 7750 2450
Wire Wire Line
	7750 2600 7400 2600
$Comp
L Rev_1_lib:GND #PWR0111
U 1 1 5D04F6E9
P 6750 2850
F 0 "#PWR0111" H 6750 2600 50  0001 C CNN
F 1 "GND" H 6755 2677 50  0000 C CNN
F 2 "" H 6750 2850 50  0001 C CNN
F 3 "" H 6750 2850 50  0001 C CNN
	1    6750 2850
	-1   0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Capacitor C7
U 1 1 5D050480
P 6750 2550
F 0 "C7" H 6658 2504 50  0000 R CNN
F 1 "0.1uF" H 6658 2595 50  0000 R CNN
F 2 "Part_footprints:C_1206_3216Metric" H 6750 2550 50  0001 C CNN
F 3 "" H 6750 2550 50  0001 C CNN
	1    6750 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 2300 6750 2300
Wire Wire Line
	6750 2300 6750 2450
Wire Wire Line
	6750 2650 6750 2850
Wire Wire Line
	8850 2300 9250 2300
$Comp
L Rev_1_lib:Resistor R7
U 1 1 5D053E7D
P 9650 2250
F 0 "R7" H 9709 2296 50  0000 L CNN
F 1 "330" H 9709 2205 50  0000 L CNN
F 2 "Part_footprints:R_1206_3216Metric" H 9650 2250 50  0001 C CNN
F 3 "" H 9650 2250 50  0001 C CNN
	1    9650 2250
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:LED D2
U 1 1 5D05471E
P 9650 2650
F 0 "D2" V 9689 2533 50  0000 R CNN
F 1 "BLUE" V 9598 2533 50  0000 R CNN
F 2 "Part_footprints:LED_1206_3216Metric" H 9650 2650 50  0001 C CNN
F 3 "" H 9650 2650 50  0001 C CNN
	1    9650 2650
	0    -1   -1   0   
$EndComp
$Comp
L Rev_1_lib:GND #PWR0112
U 1 1 5D055C5B
P 9650 2950
F 0 "#PWR0112" H 9650 2700 50  0001 C CNN
F 1 "GND" H 9655 2777 50  0000 C CNN
F 2 "" H 9650 2950 50  0001 C CNN
F 3 "" H 9650 2950 50  0001 C CNN
	1    9650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2350 9650 2500
Wire Wire Line
	9650 2800 9650 2950
$Comp
L Rev_1_lib:GND #PWR0113
U 1 1 5D06243A
P 10250 2450
F 0 "#PWR0113" H 10250 2200 50  0001 C CNN
F 1 "GND" H 10255 2277 50  0000 C CNN
F 2 "" H 10250 2450 50  0001 C CNN
F 3 "" H 10250 2450 50  0001 C CNN
	1    10250 2450
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Capacitor C8
U 1 1 5D062BDD
P 10050 2050
F 0 "C8" H 10142 2096 50  0000 L CNN
F 1 "0.1uF" H 10142 2005 50  0000 L CNN
F 2 "Part_footprints:C_1206_3216Metric" H 10050 2050 50  0001 C CNN
F 3 "" H 10050 2050 50  0001 C CNN
	1    10050 2050
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Capacitor C9
U 1 1 5D063748
P 10450 2050
F 0 "C9" H 10542 2096 50  0000 L CNN
F 1 "10uF" H 10542 2005 50  0000 L CNN
F 2 "Part_footprints:C_1206_3216Metric" H 10450 2050 50  0001 C CNN
F 3 "" H 10450 2050 50  0001 C CNN
	1    10450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1950 10450 1800
Wire Wire Line
	10450 1800 10250 1800
Wire Wire Line
	10050 1800 10050 1950
Wire Wire Line
	10050 2150 10050 2300
Wire Wire Line
	10050 2300 10250 2300
Wire Wire Line
	10450 2300 10450 2150
Connection ~ 10250 1800
Wire Wire Line
	10250 1800 10050 1800
Wire Wire Line
	10250 1500 10250 1650
Connection ~ 10250 1650
Wire Wire Line
	10250 1650 10250 1800
Wire Wire Line
	10250 2450 10250 2300
Connection ~ 10250 2300
Wire Wire Line
	10250 2300 10450 2300
Wire Wire Line
	9650 2150 9650 2000
Wire Wire Line
	9650 2000 8850 2000
Wire Wire Line
	8850 1850 9550 1850
Wire Wire Line
	9550 1850 9550 1650
Wire Wire Line
	9550 1650 10250 1650
$Comp
L Rev_1_lib:USB_Micro_B USB1
U 1 1 5D07A3F8
P 5500 7050
F 0 "USB1" V 4850 7100 60  0000 R CNN
F 1 "USB_Micro_B" V 4950 7300 60  0000 R CNN
F 2 "Part_footprints:Micro_B_SMD_G19" V 5500 7050 60  0001 C CNN
F 3 "" V 5500 7050 60  0001 C CNN
	1    5500 7050
	0    -1   -1   0   
$EndComp
$Comp
L Rev_1_lib:GND #PWR0114
U 1 1 5D07B75A
P 6550 6650
F 0 "#PWR0114" H 6550 6400 50  0001 C CNN
F 1 "GND" H 6555 6477 50  0000 C CNN
F 2 "" H 6550 6650 50  0001 C CNN
F 3 "" H 6550 6650 50  0001 C CNN
	1    6550 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6650 5800 6400
Wire Wire Line
	5800 6400 6550 6400
Wire Wire Line
	6550 6400 6550 6650
$Comp
L Rev_1_lib:+5V #PWR0115
U 1 1 5D07DD5C
P 4950 6150
F 0 "#PWR0115" H 4950 6000 50  0001 C CNN
F 1 "+5V" H 4965 6323 50  0000 C CNN
F 2 "" H 4950 6150 50  0001 C CNN
F 3 "" H 4950 6150 50  0001 C CNN
	1    4950 6150
	1    0    0    -1  
$EndComp
Text GLabel 5500 6100 1    50   Input ~ 0
DATA+
Text GLabel 5350 6100 1    50   Input ~ 0
DATA-
Wire Wire Line
	5200 6650 5200 6450
Wire Wire Line
	5200 6450 4950 6450
Wire Wire Line
	4950 6450 4950 6150
Wire Wire Line
	5350 6100 5350 6650
Wire Wire Line
	5500 6100 5500 6650
$Comp
L Rev_1_lib:Resistor R3
U 1 1 5D0926A6
P 4150 2250
F 0 "R3" V 4050 2150 50  0000 C CNN
F 1 "47k" V 4050 2350 50  0000 C CNN
F 2 "Part_footprints:R_1206_3216Metric" H 4150 2250 50  0001 C CNN
F 3 "" H 4150 2250 50  0001 C CNN
	1    4150 2250
	0    1    1    0   
$EndComp
$Comp
L Rev_1_lib:Resistor R4
U 1 1 5D09303E
P 4150 2450
F 0 "R4" V 4050 2350 50  0000 C CNN
F 1 "47k" V 4050 2550 50  0000 C CNN
F 2 "Part_footprints:R_1206_3216Metric" H 4150 2450 50  0001 C CNN
F 3 "" H 4150 2450 50  0001 C CNN
	1    4150 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 2150 4650 2250
Wire Wire Line
	4250 2250 4650 2250
Connection ~ 4650 2250
Wire Wire Line
	4650 2250 4650 2450
Wire Wire Line
	4250 2450 4650 2450
Connection ~ 4650 2450
Wire Wire Line
	4650 2450 4650 2700
Wire Wire Line
	4050 2250 3650 2250
Wire Wire Line
	3650 2250 3650 2650
Connection ~ 3650 2650
Wire Wire Line
	3650 2650 3450 2650
Wire Wire Line
	4050 2450 3750 2450
Wire Wire Line
	3750 2450 3750 2750
Connection ~ 3750 2750
Wire Wire Line
	3750 2750 4050 2750
$Comp
L Rev_1_lib:R_POT RV1
U 1 1 5D0ACE8B
P 1100 6850
F 0 "RV1" H 1031 6896 50  0000 R CNN
F 1 "10k SLIDE" H 1031 6805 50  0000 R CNN
F 2 "Part_footprints:Slide_potentiometer_Behringer" H 1100 6850 50  0001 C CNN
F 3 "" H 1100 6850 50  0001 C CNN
	1    1100 6850
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:LED D1
U 1 1 5D0CED2D
P 4150 6450
F 0 "D1" H 4143 6666 50  0000 C CNN
F 1 "RED" H 4143 6575 50  0000 C CNN
F 2 "Part_footprints:LED_1206_3216Metric" H 4150 6450 50  0001 C CNN
F 3 "" H 4150 6450 50  0001 C CNN
	1    4150 6450
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Resistor R5
U 1 1 5D0D0259
P 4600 6450
F 0 "R5" V 4404 6450 50  0000 C CNN
F 1 "330" V 4495 6450 50  0000 C CNN
F 2 "Part_footprints:R_1206_3216Metric" H 4600 6450 50  0001 C CNN
F 3 "" H 4600 6450 50  0001 C CNN
	1    4600 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 6450 4700 6450
Connection ~ 4950 6450
Wire Wire Line
	4500 6450 4300 6450
Wire Wire Line
	4000 6450 3800 6450
Wire Wire Line
	3800 6450 3800 6650
$Comp
L Rev_1_lib:GND #PWR0116
U 1 1 5D0DD2E6
P 3800 6650
F 0 "#PWR0116" H 3800 6400 50  0001 C CNN
F 1 "GND" H 3805 6477 50  0000 C CNN
F 2 "" H 3800 6650 50  0001 C CNN
F 3 "" H 3800 6650 50  0001 C CNN
	1    3800 6650
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:GND #PWR0117
U 1 1 5D0E0BA2
P 1100 7300
F 0 "#PWR0117" H 1100 7050 50  0001 C CNN
F 1 "GND" H 1105 7127 50  0000 C CNN
F 2 "" H 1100 7300 50  0001 C CNN
F 3 "" H 1100 7300 50  0001 C CNN
	1    1100 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7000 1100 7300
$Comp
L Rev_1_lib:+5V #PWR0118
U 1 1 5D0E44A0
P 1100 6400
F 0 "#PWR0118" H 1100 6250 50  0001 C CNN
F 1 "+5V" H 1115 6573 50  0000 C CNN
F 2 "" H 1100 6400 50  0001 C CNN
F 3 "" H 1100 6400 50  0001 C CNN
	1    1100 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6400 1100 6700
Wire Wire Line
	1250 6850 1550 6850
$Sheet
S 7300 3900 1450 1250
U 5D10742E
F0 "I2C Encoder 1" 50
F1 "I2CEncoder.sch" 50
$EndSheet
$Sheet
S 9200 3900 1450 1250
U 5D162AAA
F0 "I2C Encoder 2" 50
F1 "I2CEncoder.sch" 50
$EndSheet
$Comp
L Rev_1_lib:Conn_01x04 J2
U 1 1 5D17553E
P 2750 7400
F 0 "J2" V 2650 7000 50  0000 L CNN
F 1 "LCD Header" V 2750 6650 50  0000 L CNN
F 2 "Part_footprints:PinHeader_1x04_P2.54mm_Horizontal" H 2750 7400 50  0001 C CNN
F 3 "" H 2750 7400 50  0001 C CNN
	1    2750 7400
	0    1    1    0   
$EndComp
$Comp
L Rev_1_lib:GND #PWR0119
U 1 1 5D179736
P 3300 7200
F 0 "#PWR0119" H 3300 6950 50  0001 C CNN
F 1 "GND" H 3305 7027 50  0000 C CNN
F 2 "" H 3300 7200 50  0001 C CNN
F 3 "" H 3300 7200 50  0001 C CNN
	1    3300 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7200 3300 6950
Wire Wire Line
	3300 6950 2850 6950
Wire Wire Line
	2850 6950 2850 7200
$Comp
L Rev_1_lib:+5V #PWR0120
U 1 1 5D17D7DA
P 2750 6350
F 0 "#PWR0120" H 2750 6200 50  0001 C CNN
F 1 "+5V" H 2765 6523 50  0000 C CNN
F 2 "" H 2750 6350 50  0001 C CNN
F 3 "" H 2750 6350 50  0001 C CNN
	1    2750 6350
	1    0    0    -1  
$EndComp
Text GLabel 2650 6600 1    50   Input ~ 0
SDA
Text GLabel 2550 6600 1    50   Input ~ 0
SCL
Wire Wire Line
	2750 6350 2750 7200
Wire Wire Line
	2550 6600 2550 7200
Wire Wire Line
	2650 7200 2650 6600
Text HLabel 1550 6850 2    50   Input ~ 0
ADC1
Wire Wire Line
	1200 1350 2250 1350
Text HLabel 1750 1550 0    50   Input ~ 0
ADC1
Wire Wire Line
	2250 1550 1750 1550
Text HLabel 4050 1650 2    50   Input ~ 0
MOSI
Wire Wire Line
	3450 1650 4050 1650
Wire Wire Line
	3450 1750 4050 1750
Wire Wire Line
	3450 1850 4050 1850
Text HLabel 4050 1750 2    50   Input ~ 0
MISO
Text HLabel 4050 1850 2    50   Input ~ 0
SCK
Wire Wire Line
	4450 1950 4450 1150
Wire Wire Line
	4450 1150 4950 1150
Wire Wire Line
	3450 1950 4450 1950
Connection ~ 4950 1150
Wire Wire Line
	4550 2050 4550 1650
Wire Wire Line
	4550 1650 4950 1650
Wire Wire Line
	3450 2050 4550 2050
Connection ~ 4950 1650
Text HLabel 1150 5750 3    50   Input ~ 0
MOSI
Text HLabel 1250 4650 1    50   Input ~ 0
MISO
Text HLabel 4450 3300 3    50   Input ~ 0
RESET
Wire Wire Line
	4450 3000 4450 3300
Connection ~ 4450 3000
Text HLabel 1050 4650 1    50   Input ~ 0
RESET
Wire Wire Line
	1050 4950 1050 4650
Wire Wire Line
	1150 5750 1150 5450
Wire Wire Line
	1250 4650 1250 4950
$Comp
L Rev_1_lib:GND #PWR0121
U 1 1 5D1E5618
P 900 5750
F 0 "#PWR0121" H 900 5500 50  0001 C CNN
F 1 "GND" H 905 5577 50  0000 C CNN
F 2 "" H 900 5750 50  0001 C CNN
F 3 "" H 900 5750 50  0001 C CNN
	1    900  5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5600 900  5750
$Comp
L Rev_1_lib:Conn_02x03_Odd_Even J1
U 1 1 5D016322
P 1150 5150
F 0 "J1" V 1154 5330 50  0000 L CNN
F 1 "ISP Header" V 1245 5330 50  0000 L CNN
F 2 "Part_footprints:PinHeader_2x03_P2.54mm_Vertical" H 1150 5150 50  0001 C CNN
F 3 "" H 1150 5150 50  0001 C CNN
	1    1150 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 5600 1050 5450
Wire Wire Line
	900  5600 1050 5600
Wire Wire Line
	1150 4950 1150 4650
Text HLabel 1150 4650 1    50   Input ~ 0
SCK
$Comp
L Rev_1_lib:+5V #PWR0122
U 1 1 5D03D85D
P 1400 5750
F 0 "#PWR0122" H 1400 5600 50  0001 C CNN
F 1 "+5V" H 1415 5923 50  0000 C CNN
F 2 "" H 1400 5750 50  0001 C CNN
F 3 "" H 1400 5750 50  0001 C CNN
	1    1400 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 5450 1250 5600
Wire Wire Line
	1400 5750 1400 5600
Wire Wire Line
	1250 5600 1400 5600
Text HLabel 4050 3550 2    50   Input ~ 0
PWM1
Text HLabel 4050 3650 2    50   Input ~ 0
PWM2
Wire Wire Line
	3450 3550 4050 3550
Wire Wire Line
	4050 3650 3450 3650
Wire Wire Line
	3450 3350 4050 3350
Text HLabel 4050 3350 2    50   Input ~ 0
PWM3
Text HLabel 4050 3750 2    50   Input ~ 0
IO2
Wire Wire Line
	3450 3750 4050 3750
Text HLabel 4050 3450 2    50   Input ~ 0
IO1
Wire Wire Line
	3450 3450 4050 3450
Text HLabel 4050 3250 2    50   Input ~ 0
IO3
Wire Wire Line
	3450 3250 4050 3250
Text HLabel 5100 4700 0    50   Input ~ 0
IO3
Wire Wire Line
	5100 5000 5700 5000
Wire Wire Line
	5700 4800 5100 4800
Text HLabel 5100 4500 0    50   Input ~ 0
IO1
Wire Wire Line
	5700 4500 5100 4500
Text HLabel 5100 4600 0    50   Input ~ 0
IO2
Text HLabel 5100 5000 0    50   Input ~ 0
PWM3
Wire Wire Line
	5700 4900 5100 4900
Wire Wire Line
	5100 4600 5700 4600
Wire Wire Line
	5700 4700 5100 4700
Text HLabel 5100 4900 0    50   Input ~ 0
PWM2
Text HLabel 5100 4800 0    50   Input ~ 0
PWM1
Wire Wire Line
	5200 4400 5700 4400
Wire Wire Line
	5200 4400 5200 4150
Wire Wire Line
	5200 5100 5700 5100
Wire Wire Line
	5200 5350 5200 5100
$Comp
L Rev_1_lib:GND #PWR0123
U 1 1 5D0AECA9
P 5200 4150
F 0 "#PWR0123" H 5200 3900 50  0001 C CNN
F 1 "GND" H 5205 3977 50  0000 C CNN
F 2 "" H 5200 4150 50  0001 C CNN
F 3 "" H 5200 4150 50  0001 C CNN
	1    5200 4150
	-1   0    0    1   
$EndComp
$Comp
L Rev_1_lib:+5V #PWR0124
U 1 1 5D0ADE03
P 5200 5350
F 0 "#PWR0124" H 5200 5200 50  0001 C CNN
F 1 "+5V" H 5215 5523 50  0000 C CNN
F 2 "" H 5200 5350 50  0001 C CNN
F 3 "" H 5200 5350 50  0001 C CNN
	1    5200 5350
	-1   0    0    1   
$EndComp
$Comp
L Rev_1_lib:Conn_01x08 J3
U 1 1 5D0A9F8A
P 5900 4700
F 0 "J3" H 5980 4692 50  0000 L CNN
F 1 "Breakout" H 5980 4601 50  0000 L CNN
F 2 "Part_footprints:PinHeader_1x08_P2.54mm_Horizontal" H 5900 4700 50  0001 C CNN
F 3 "" H 5900 4700 50  0001 C CNN
	1    5900 4700
	1    0    0    -1  
$EndComp
Text HLabel 4050 1350 2    50   Input ~ 0
CAL
Wire Wire Line
	3450 1350 4050 1350
Text HLabel 4100 5300 2    50   Input ~ 0
CAL
$Comp
L Rev_1_lib:Push_Button SW1
U 1 1 5D115056
P 2700 5300
F 0 "SW1" H 2500 5450 50  0000 L CNN
F 1 "Calibration" H 2745 5448 50  0000 L CNN
F 2 "Part_footprints:Right_angle_momentary_button" H 2700 5500 50  0001 C CNN
F 3 "" H 2700 5500 50  0001 C CNN
	1    2700 5300
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:+5V #PWR0125
U 1 1 5D1167EC
P 3700 4700
F 0 "#PWR0125" H 3700 4550 50  0001 C CNN
F 1 "+5V" H 3715 4873 50  0000 C CNN
F 2 "" H 3700 4700 50  0001 C CNN
F 3 "" H 3700 4700 50  0001 C CNN
	1    3700 4700
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Resistor R2
U 1 1 5D118AB9
P 3700 5000
F 0 "R2" H 3759 5046 50  0000 L CNN
F 1 "10k" H 3759 4955 50  0000 L CNN
F 2 "Part_footprints:R_1206_3216Metric" H 3700 5000 50  0001 C CNN
F 3 "" H 3700 5000 50  0001 C CNN
	1    3700 5000
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:GND #PWR0126
U 1 1 5D119812
P 3700 5900
F 0 "#PWR0126" H 3700 5650 50  0001 C CNN
F 1 "GND" H 3705 5727 50  0000 C CNN
F 2 "" H 3700 5900 50  0001 C CNN
F 3 "" H 3700 5900 50  0001 C CNN
	1    3700 5900
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:GND #PWR0127
U 1 1 5D11AFB4
P 2300 5500
F 0 "#PWR0127" H 2300 5250 50  0001 C CNN
F 1 "GND" H 2305 5327 50  0000 C CNN
F 2 "" H 2300 5500 50  0001 C CNN
F 3 "" H 2300 5500 50  0001 C CNN
	1    2300 5500
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Capacitor C3
U 1 1 5D11B8E6
P 3700 5600
F 0 "C3" H 3792 5646 50  0000 L CNN
F 1 "0.1uF" H 3792 5555 50  0000 L CNN
F 2 "Part_footprints:C_1206_3216Metric" H 3700 5600 50  0001 C CNN
F 3 "" H 3700 5600 50  0001 C CNN
	1    3700 5600
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Resistor R1
U 1 1 5D11C109
P 3400 5300
F 0 "R1" V 3300 5250 50  0000 C CNN
F 1 "1k" V 3300 5400 50  0000 C CNN
F 2 "Part_footprints:R_1206_3216Metric" H 3400 5300 50  0001 C CNN
F 3 "" H 3400 5300 50  0001 C CNN
	1    3400 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 5900 3700 5700
Wire Wire Line
	3700 5100 3700 5500
Wire Wire Line
	3500 5300 3700 5300
Wire Wire Line
	3700 4900 3700 4700
Wire Wire Line
	3300 5300 2900 5300
Wire Wire Line
	2300 5500 2300 5300
Wire Wire Line
	2500 5300 2300 5300
Wire Wire Line
	3700 5300 4100 5300
$EndSCHEMATC
