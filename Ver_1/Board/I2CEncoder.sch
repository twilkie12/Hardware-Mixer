EESchema Schematic File Version 4
LIBS:Board-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L Rev_1_lib:PIC16F15323_I_SL PIC1
U 1 1 5D10A9EA
P 3500 4300
AR Path="/5D10742E/5D10A9EA" Ref="PIC1"  Part="1" 
AR Path="/5D162AAA/5D10A9EA" Ref="PIC2"  Part="1" 
F 0 "PIC2" H 3400 5536 60  0000 C CNN
F 1 "PIC16F15323_I_SL" H 3400 5430 60  0000 C CNN
F 2 "Part_footprints:SOIC-14_3.9x8.7mm_P1.27mm" H 3100 4300 60  0001 C CNN
F 3 "" H 3100 4300 60  0001 C CNN
	1    3500 4300
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:+5V #PWR0128
U 1 1 5D10F774
P 1750 2750
AR Path="/5D10742E/5D10F774" Ref="#PWR0128"  Part="1" 
AR Path="/5D162AAA/5D10F774" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 1750 2600 50  0001 C CNN
F 1 "+5V" H 1765 2923 50  0000 C CNN
F 2 "" H 1750 2750 50  0001 C CNN
F 3 "" H 1750 2750 50  0001 C CNN
	1    1750 2750
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:GND #PWR0129
U 1 1 5D1113DB
P 1750 3400
AR Path="/5D10742E/5D1113DB" Ref="#PWR0129"  Part="1" 
AR Path="/5D162AAA/5D1113DB" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 1750 3150 50  0001 C CNN
F 1 "GND" H 1755 3227 50  0000 C CNN
F 2 "" H 1750 3400 50  0001 C CNN
F 3 "" H 1750 3400 50  0001 C CNN
	1    1750 3400
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Capacitor C10
U 1 1 5D111A91
P 1750 3150
AR Path="/5D10742E/5D111A91" Ref="C10"  Part="1" 
AR Path="/5D162AAA/5D111A91" Ref="C13"  Part="1" 
F 0 "C13" H 1842 3196 50  0000 L CNN
F 1 "0.1uF" H 1842 3105 50  0000 L CNN
F 2 "Part_footprints:C_1206_3216Metric" H 1750 3150 50  0001 C CNN
F 3 "" H 1750 3150 50  0001 C CNN
	1    1750 3150
	1    0    0    -1  
$EndComp
Text GLabel 4600 4350 2    50   Input ~ 0
SDA
Text GLabel 4600 4500 2    50   Input ~ 0
SCL
Wire Wire Line
	4000 4350 4600 4350
Wire Wire Line
	4000 4500 4600 4500
$Comp
L Rev_1_lib:Rotary_Encoder_Switch SW3
U 1 1 5D11383A
P 8450 3650
AR Path="/5D10742E/5D11383A" Ref="SW3"  Part="1" 
AR Path="/5D162AAA/5D11383A" Ref="SW4"  Part="1" 
F 0 "SW4" H 8450 4017 50  0000 C CNN
F 1 "Encoder" H 8450 3926 50  0000 C CNN
F 2 "Part_footprints:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 8350 3810 50  0001 C CNN
F 3 "" H 8450 3910 50  0001 C CNN
	1    8450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3250 1750 3400
$Comp
L Rev_1_lib:GND #PWR0130
U 1 1 5D1176C6
P 4700 3700
AR Path="/5D10742E/5D1176C6" Ref="#PWR0130"  Part="1" 
AR Path="/5D162AAA/5D1176C6" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 4700 3450 50  0001 C CNN
F 1 "GND" H 4705 3527 50  0000 C CNN
F 2 "" H 4700 3700 50  0001 C CNN
F 3 "" H 4700 3700 50  0001 C CNN
	1    4700 3700
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Resistor R9
U 1 1 5D1205B9
P 7400 3950
AR Path="/5D10742E/5D1205B9" Ref="R9"  Part="1" 
AR Path="/5D162AAA/5D1205B9" Ref="R13"  Part="1" 
F 0 "R13" V 7500 4050 50  0000 C CNN
F 1 "10k" V 7500 3800 50  0000 C CNN
F 2 "Part_footprints:R_1206_3216Metric" H 7400 3950 50  0001 C CNN
F 3 "" H 7400 3950 50  0001 C CNN
	1    7400 3950
	0    -1   -1   0   
$EndComp
Text HLabel 6900 3350 0    50   Input ~ 0
RA
Wire Wire Line
	8150 3550 7900 3550
Wire Wire Line
	7900 3550 7900 3350
Wire Wire Line
	8150 3750 7900 3750
Wire Wire Line
	7900 3750 7900 3950
Wire Wire Line
	6450 3650 6450 3900
$Comp
L Rev_1_lib:GND #PWR0131
U 1 1 5D129783
P 6450 3900
AR Path="/5D10742E/5D129783" Ref="#PWR0131"  Part="1" 
AR Path="/5D162AAA/5D129783" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 6450 3650 50  0001 C CNN
F 1 "GND" H 6455 3727 50  0000 C CNN
F 2 "" H 6450 3900 50  0001 C CNN
F 3 "" H 6450 3900 50  0001 C CNN
	1    6450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4350 2800 4350
Wire Wire Line
	2200 4500 2800 4500
Text HLabel 2200 4500 0    50   Input ~ 0
RA
Text HLabel 2200 4350 0    50   Input ~ 0
RB
$Comp
L Rev_1_lib:GND #PWR0132
U 1 1 5D12AB61
P 9750 3750
AR Path="/5D10742E/5D12AB61" Ref="#PWR0132"  Part="1" 
AR Path="/5D162AAA/5D12AB61" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 9750 3500 50  0001 C CNN
F 1 "GND" H 9755 3577 50  0000 C CNN
F 2 "" H 9750 3750 50  0001 C CNN
F 3 "" H 9750 3750 50  0001 C CNN
	1    9750 3750
	1    0    0    -1  
$EndComp
Text HLabel 9350 3750 2    50   Input ~ 0
PB
Wire Wire Line
	8750 3750 9350 3750
Wire Wire Line
	9750 3750 9750 3550
Wire Wire Line
	9750 3550 8750 3550
Wire Wire Line
	7100 3950 7300 3950
Wire Wire Line
	7500 3950 7700 3950
Wire Wire Line
	7700 3950 7700 4150
Wire Wire Line
	7900 3950 7700 3950
Connection ~ 7700 3950
Wire Wire Line
	7100 3950 7100 4150
Wire Wire Line
	7100 3950 6900 3950
Connection ~ 7100 3950
Text HLabel 6900 3950 0    50   Input ~ 0
RB
$Comp
L Rev_1_lib:Capacitor C12
U 1 1 5D131192
P 7100 4250
AR Path="/5D10742E/5D131192" Ref="C12"  Part="1" 
AR Path="/5D162AAA/5D131192" Ref="C15"  Part="1" 
F 0 "C15" H 7192 4296 50  0000 L CNN
F 1 "10nF" H 7192 4205 50  0000 L CNN
F 2 "Part_footprints:C_1206_3216Metric" H 7100 4250 50  0001 C CNN
F 3 "" H 7100 4250 50  0001 C CNN
	1    7100 4250
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:GND #PWR0133
U 1 1 5D131625
P 7100 4550
AR Path="/5D10742E/5D131625" Ref="#PWR0133"  Part="1" 
AR Path="/5D162AAA/5D131625" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 7100 4300 50  0001 C CNN
F 1 "GND" H 7105 4377 50  0000 C CNN
F 2 "" H 7100 4550 50  0001 C CNN
F 3 "" H 7100 4550 50  0001 C CNN
	1    7100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4550 7100 4350
Wire Wire Line
	7700 4350 7700 4550
$Comp
L Rev_1_lib:+5V #PWR0134
U 1 1 5D13290B
P 7700 4550
AR Path="/5D10742E/5D13290B" Ref="#PWR0134"  Part="1" 
AR Path="/5D162AAA/5D13290B" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 7700 4400 50  0001 C CNN
F 1 "+5V" H 7715 4723 50  0000 C CNN
F 2 "" H 7700 4550 50  0001 C CNN
F 3 "" H 7700 4550 50  0001 C CNN
	1    7700 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8150 3650 6450 3650
$Comp
L Rev_1_lib:Resistor R8
U 1 1 5D120C5F
P 7400 3350
AR Path="/5D10742E/5D120C5F" Ref="R8"  Part="1" 
AR Path="/5D162AAA/5D120C5F" Ref="R12"  Part="1" 
F 0 "R12" V 7300 3450 50  0000 C CNN
F 1 "10k" V 7300 3200 50  0000 C CNN
F 2 "Part_footprints:R_1206_3216Metric" H 7400 3350 50  0001 C CNN
F 3 "" H 7400 3350 50  0001 C CNN
	1    7400 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7700 3350 7900 3350
Wire Wire Line
	7700 3350 7700 3150
Wire Wire Line
	7700 3350 7500 3350
Wire Wire Line
	7300 3350 7100 3350
Wire Wire Line
	7100 3150 7100 3350
Wire Wire Line
	6900 3350 7100 3350
$Comp
L Rev_1_lib:Capacitor C11
U 1 1 5D137257
P 7100 3050
AR Path="/5D10742E/5D137257" Ref="C11"  Part="1" 
AR Path="/5D162AAA/5D137257" Ref="C14"  Part="1" 
F 0 "C14" H 7192 3096 50  0000 L CNN
F 1 "10nF" H 7192 3005 50  0000 L CNN
F 2 "Part_footprints:C_1206_3216Metric" H 7100 3050 50  0001 C CNN
F 3 "" H 7100 3050 50  0001 C CNN
	1    7100 3050
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Resistor R10
U 1 1 5D137D53
P 7700 3050
AR Path="/5D10742E/5D137D53" Ref="R10"  Part="1" 
AR Path="/5D162AAA/5D137D53" Ref="R14"  Part="1" 
F 0 "R14" H 7759 3096 50  0000 L CNN
F 1 "10k" H 7759 3005 50  0000 L CNN
F 2 "Part_footprints:R_1206_3216Metric" H 7700 3050 50  0001 C CNN
F 3 "" H 7700 3050 50  0001 C CNN
	1    7700 3050
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Resistor R11
U 1 1 5D12F773
P 7700 4250
AR Path="/5D10742E/5D12F773" Ref="R11"  Part="1" 
AR Path="/5D162AAA/5D12F773" Ref="R15"  Part="1" 
F 0 "R15" H 7759 4296 50  0000 L CNN
F 1 "10k" H 7759 4205 50  0000 L CNN
F 2 "Part_footprints:R_1206_3216Metric" H 7700 4250 50  0001 C CNN
F 3 "" H 7700 4250 50  0001 C CNN
	1    7700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2950 7100 2750
Wire Wire Line
	7700 2950 7700 2750
$Comp
L Rev_1_lib:GND #PWR0135
U 1 1 5D13954A
P 7100 2750
AR Path="/5D10742E/5D13954A" Ref="#PWR0135"  Part="1" 
AR Path="/5D162AAA/5D13954A" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 7100 2500 50  0001 C CNN
F 1 "GND" H 7105 2577 50  0000 C CNN
F 2 "" H 7100 2750 50  0001 C CNN
F 3 "" H 7100 2750 50  0001 C CNN
	1    7100 2750
	-1   0    0    1   
$EndComp
$Comp
L Rev_1_lib:+5V #PWR0136
U 1 1 5D13A0CD
P 7700 2750
AR Path="/5D10742E/5D13A0CD" Ref="#PWR0136"  Part="1" 
AR Path="/5D162AAA/5D13A0CD" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 7700 2600 50  0001 C CNN
F 1 "+5V" H 7715 2923 50  0000 C CNN
F 2 "" H 7700 2750 50  0001 C CNN
F 3 "" H 7700 2750 50  0001 C CNN
	1    7700 2750
	1    0    0    -1  
$EndComp
Text HLabel 2200 4200 0    50   Input ~ 0
PB
Wire Wire Line
	2200 4200 2800 4200
Wire Wire Line
	4700 3600 4700 3700
Wire Wire Line
	4000 3600 4700 3600
Wire Wire Line
	1750 2750 1750 2900
Wire Wire Line
	1750 2900 2300 2900
Wire Wire Line
	2300 2900 2300 3600
Wire Wire Line
	2300 3600 2800 3600
Connection ~ 1750 2900
Wire Wire Line
	1750 2900 1750 3050
$Comp
L Rev_1_lib:Jumper JP1
U 1 1 5D145276
P 2050 3800
AR Path="/5D10742E/5D145276" Ref="JP1"  Part="1" 
AR Path="/5D162AAA/5D145276" Ref="JP3"  Part="1" 
F 0 "JP3" H 1900 3900 50  0000 C CNN
F 1 "ADR2" H 2200 3900 50  0000 C CNN
F 2 "Part_footprints:R_1206_3216Metric" H 2050 3800 50  0001 C CNN
F 3 "" H 2050 3800 50  0001 C CNN
	1    2050 3800
	1    0    0    -1  
$EndComp
$Comp
L Rev_1_lib:Jumper JP2
U 1 1 5D146B21
P 2050 4050
AR Path="/5D10742E/5D146B21" Ref="JP2"  Part="1" 
AR Path="/5D162AAA/5D146B21" Ref="JP4"  Part="1" 
F 0 "JP4" H 1900 4150 50  0000 C CNN
F 1 "ADR3" H 2200 4150 50  0000 C CNN
F 2 "Part_footprints:R_1206_3216Metric" H 2050 4050 50  0001 C CNN
F 3 "" H 2050 4050 50  0001 C CNN
	1    2050 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3900 2500 3900
Wire Wire Line
	2500 3900 2500 3800
Wire Wire Line
	2500 3800 2150 3800
Wire Wire Line
	2150 4050 2800 4050
$Comp
L Rev_1_lib:GND #PWR0137
U 1 1 5D148A37
P 1500 4250
AR Path="/5D10742E/5D148A37" Ref="#PWR0137"  Part="1" 
AR Path="/5D162AAA/5D148A37" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 1500 4000 50  0001 C CNN
F 1 "GND" H 1505 4077 50  0000 C CNN
F 2 "" H 1500 4250 50  0001 C CNN
F 3 "" H 1500 4250 50  0001 C CNN
	1    1500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3800 1500 3800
Wire Wire Line
	1500 3800 1500 4050
Wire Wire Line
	1950 4050 1500 4050
Connection ~ 1500 4050
Wire Wire Line
	1500 4050 1500 4250
Connection ~ 7100 3350
Connection ~ 7700 3350
$EndSCHEMATC
