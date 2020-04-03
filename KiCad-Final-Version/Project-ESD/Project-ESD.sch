EESchema Schematic File Version 4
LIBS:Project-ESD-cache
EELAYER 26 0
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
L Project-ESD-rescue:C-Device-Lab1-rescue-Lab1-rescue C10
U 1 1 5E285A91
P 1750 2800
F 0 "C10" H 1865 2846 50  0000 L CNN
F 1 "10uF" H 1865 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1788 2650 50  0001 C CNN
F 3 "~" H 1750 2800 50  0001 C CNN
	1    1750 2800
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:C-Device-Lab1-rescue-Lab1-rescue C11
U 1 1 5E285C77
P 2250 2800
F 0 "C11" H 2365 2846 50  0000 L CNN
F 1 "0.1uF" H 2365 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2288 2650 50  0001 C CNN
F 3 "~" H 2250 2800 50  0001 C CNN
	1    2250 2800
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:C-Device-Lab1-rescue-Lab1-rescue C6
U 1 1 5E285CB6
P 1050 2200
F 0 "C6" H 1165 2246 50  0000 L CNN
F 1 "10uF" H 1165 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1088 2050 50  0001 C CNN
F 3 "~" H 1050 2200 50  0001 C CNN
	1    1050 2200
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:C-Device-Lab1-rescue-Lab1-rescue C9
U 1 1 5E285D64
P 1700 2200
F 0 "C9" H 1815 2246 50  0000 L CNN
F 1 "1uF" H 1815 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1738 2050 50  0001 C CNN
F 3 "~" H 1700 2200 50  0001 C CNN
	1    1700 2200
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:C-Device-Lab1-rescue-Lab1-rescue C12
U 1 1 5E285DBE
P 2350 2200
F 0 "C12" H 2465 2246 50  0000 L CNN
F 1 "0.1uF" H 2465 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2388 2050 50  0001 C CNN
F 3 "~" H 2350 2200 50  0001 C CNN
	1    2350 2200
	1    0    0    -1  
$EndComp
Connection ~ 1700 2050
Connection ~ 1700 2350
Wire Wire Line
	1750 2950 2250 2950
Wire Wire Line
	2250 2650 1750 2650
Wire Wire Line
	2250 2650 2750 2650
Wire Wire Line
	2750 2650 2750 3300
Connection ~ 2250 2650
Wire Wire Line
	1050 2350 1700 2350
Wire Wire Line
	1050 2050 1700 2050
Wire Wire Line
	1700 2050 2350 2050
Wire Wire Line
	1700 2350 2350 2350
Wire Wire Line
	2350 2050 2850 2050
Wire Wire Line
	2850 2050 2850 2650
Connection ~ 2350 2050
Wire Wire Line
	2850 2650 2950 2650
Wire Wire Line
	2950 2650 2950 3300
Connection ~ 2850 2650
Wire Wire Line
	2850 2650 2850 3300
Wire Wire Line
	3050 3300 3050 2650
Wire Wire Line
	3050 2650 3550 2650
$Comp
L Project-ESD-rescue:C-Device-Lab1-rescue-Lab1-rescue C13
U 1 1 5E286B80
P 3550 2800
F 0 "C13" H 3665 2846 50  0000 L CNN
F 1 "1uF" H 3665 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 2650 50  0001 C CNN
F 3 "~" H 3550 2800 50  0001 C CNN
	1    3550 2800
	1    0    0    -1  
$EndComp
Connection ~ 3550 2650
Wire Wire Line
	3550 2650 4000 2650
Connection ~ 1750 2650
Connection ~ 1050 2050
Wire Wire Line
	3150 3300 3150 3200
Wire Wire Line
	3150 3200 4100 3200
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0101
U 1 1 5E287790
P 2950 6300
F 0 "#PWR0101" H 2950 6050 50  0001 C CNN
F 1 "GND" H 2955 6127 50  0000 C CNN
F 2 "" H 2950 6300 50  0001 C CNN
F 3 "" H 2950 6300 50  0001 C CNN
	1    2950 6300
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0102
U 1 1 5E28788B
P 2350 2350
F 0 "#PWR0102" H 2350 2100 50  0001 C CNN
F 1 "GND" H 2355 2177 50  0000 C CNN
F 2 "" H 2350 2350 50  0001 C CNN
F 3 "" H 2350 2350 50  0001 C CNN
	1    2350 2350
	1    0    0    -1  
$EndComp
Connection ~ 2350 2350
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0103
U 1 1 5E2878BB
P 2250 2950
F 0 "#PWR0103" H 2250 2700 50  0001 C CNN
F 1 "GND" H 2255 2777 50  0000 C CNN
F 2 "" H 2250 2950 50  0001 C CNN
F 3 "" H 2250 2950 50  0001 C CNN
	1    2250 2950
	1    0    0    -1  
$EndComp
Connection ~ 2250 2950
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0104
U 1 1 5E28794D
P 3550 2950
F 0 "#PWR0104" H 3550 2700 50  0001 C CNN
F 1 "GND" H 3555 2777 50  0000 C CNN
F 2 "" H 3550 2950 50  0001 C CNN
F 3 "" H 3550 2950 50  0001 C CNN
	1    3550 2950
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:+3.3V-power-Lab1-rescue-Lab1-rescue #PWR0105
U 1 1 5E287A95
P 750 2050
F 0 "#PWR0105" H 750 1900 50  0001 C CNN
F 1 "+3.3V" H 765 2223 50  0000 C CNN
F 2 "" H 750 2050 50  0001 C CNN
F 3 "" H 750 2050 50  0001 C CNN
	1    750  2050
	0    -1   -1   0   
$EndComp
$Comp
L Project-ESD-rescue:+3.3V-power-Lab1-rescue-Lab1-rescue #PWR0106
U 1 1 5E287AC5
P 1350 2650
F 0 "#PWR0106" H 1350 2500 50  0001 C CNN
F 1 "+3.3V" H 1365 2823 50  0000 C CNN
F 2 "" H 1350 2650 50  0001 C CNN
F 3 "" H 1350 2650 50  0001 C CNN
	1    1350 2650
	0    -1   -1   0   
$EndComp
$Comp
L Project-ESD-rescue:+3.3V-power-Lab1-rescue-Lab1-rescue #PWR0107
U 1 1 5E287EC8
P 4000 2650
F 0 "#PWR0107" H 4000 2500 50  0001 C CNN
F 1 "+3.3V" H 4015 2823 50  0000 C CNN
F 2 "" H 4000 2650 50  0001 C CNN
F 3 "" H 4000 2650 50  0001 C CNN
	1    4000 2650
	0    1    1    0   
$EndComp
$Comp
L Project-ESD-rescue:+3.3V-power-Lab1-rescue-Lab1-rescue #PWR0108
U 1 1 5E287EF8
P 4100 3200
F 0 "#PWR0108" H 4100 3050 50  0001 C CNN
F 1 "+3.3V" H 4115 3373 50  0000 C CNN
F 2 "" H 4100 3200 50  0001 C CNN
F 3 "" H 4100 3200 50  0001 C CNN
	1    4100 3200
	0    1    1    0   
$EndComp
$Comp
L Project-ESD-rescue:R-Device-Lab1-rescue-Lab1-rescue R3
U 1 1 5E288125
P 1550 6100
F 0 "R3" V 1343 6100 50  0000 C CNN
F 1 "10k" V 1434 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1480 6100 50  0001 C CNN
F 3 "~" H 1550 6100 50  0001 C CNN
	1    1550 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	750  2050 1050 2050
Wire Wire Line
	1350 2650 1750 2650
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0109
U 1 1 5E289AF6
P 1400 6100
F 0 "#PWR0109" H 1400 5850 50  0001 C CNN
F 1 "GND" H 1405 5927 50  0000 C CNN
F 2 "" H 1400 6100 50  0001 C CNN
F 3 "" H 1400 6100 50  0001 C CNN
	1    1400 6100
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:Conn_01x05_Male-Connector-Lab1-rescue-Lab1-rescue J2
U 1 1 5E28B339
P 750 4550
F 0 "J2" H 856 4928 50  0000 C CNN
F 1 "Conn_01x05_Male" H 856 4837 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical_SMD_Pin1Right" H 750 4550 50  0001 C CNN
F 3 "~" H 750 4550 50  0001 C CNN
	1    750  4550
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:+3.3V-power-Lab1-rescue-Lab1-rescue #PWR0113
U 1 1 5E28B417
P 950 4350
F 0 "#PWR0113" H 950 4200 50  0001 C CNN
F 1 "+3.3V" V 965 4478 50  0000 L CNN
F 2 "" H 950 4350 50  0001 C CNN
F 3 "" H 950 4350 50  0001 C CNN
	1    950  4350
	0    1    1    0   
$EndComp
Wire Wire Line
	950  4450 1200 4450
Wire Wire Line
	1200 4450 1200 5000
Wire Wire Line
	1200 5000 2050 5000
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0114
U 1 1 5E28C1E9
P 1150 4550
F 0 "#PWR0114" H 1150 4300 50  0001 C CNN
F 1 "GND" H 1155 4377 50  0000 C CNN
F 2 "" H 1150 4550 50  0001 C CNN
F 3 "" H 1150 4550 50  0001 C CNN
	1    1150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4550 1150 4550
Wire Wire Line
	950  4650 1050 4650
Wire Wire Line
	1050 4650 1050 4900
Wire Wire Line
	1050 4900 2050 4900
Wire Wire Line
	950  4750 950  5050
$Comp
L Project-ESD-rescue:LM1117ADJ-LM1117ADJ-Lab1-rescue-Lab1-rescue U1
U 1 1 5E2925BD
P 3350 700
F 0 "U1" H 3350 792 50  0000 C CNN
F 1 "LM1117ADJ" H 3350 701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 3350 700 50  0001 C CNN
F 3 "" H 3350 700 50  0001 C CNN
	1    3350 700 
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:USB_OTG-Connector-Lab1-rescue-Lab1-rescue J1
U 1 1 5E292674
P 1550 1050
F 0 "J1" H 1605 1517 50  0000 C CNN
F 1 "USB_OTG" H 1605 1426 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Wuerth_629105150521" H 1700 1000 50  0001 C CNN
F 3 " ~" H 1700 1000 50  0001 C CNN
	1    1550 1050
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0115
U 1 1 5E292F1C
P 1500 1800
F 0 "#PWR0115" H 1500 1550 50  0001 C CNN
F 1 "GND" H 1505 1627 50  0000 C CNN
F 2 "" H 1500 1800 50  0001 C CNN
F 3 "" H 1500 1800 50  0001 C CNN
	1    1500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1450 1500 1450
Wire Wire Line
	1500 1450 1500 1750
Connection ~ 1500 1450
Wire Wire Line
	1500 1450 1450 1450
$Comp
L Project-ESD-rescue:CP-Device-Lab1-rescue-Lab1-rescue C2
U 1 1 5E294284
P 2400 1000
F 0 "C2" H 2518 1046 50  0000 L CNN
F 1 "10u" H 2518 955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 2438 850 50  0001 C CNN
F 3 "~" H 2400 1000 50  0001 C CNN
	1    2400 1000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:C-Device-Lab1-rescue-Lab1-rescue C1
U 1 1 5E2942FF
P 2000 1000
F 0 "C1" H 2115 1046 50  0000 L CNN
F 1 "100n" H 2115 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2038 850 50  0001 C CNN
F 3 "~" H 2000 1000 50  0001 C CNN
	1    2000 1000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:C-Device-Lab1-rescue-Lab1-rescue C3
U 1 1 5E294353
P 2750 1000
F 0 "C3" H 2865 1046 50  0000 L CNN
F 1 "100n" H 2865 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 850 50  0001 C CNN
F 3 "~" H 2750 1000 50  0001 C CNN
	1    2750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 850  4100 950 
$Comp
L Project-ESD-rescue:R-Device-Lab1-rescue-Lab1-rescue R1
U 1 1 5E297AB2
P 4350 1000
F 0 "R1" H 4420 1046 50  0000 L CNN
F 1 "3.3k" H 4420 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4280 1000 50  0001 C CNN
F 3 "~" H 4350 1000 50  0001 C CNN
	1    4350 1000
	1    0    0    -1  
$EndComp
Connection ~ 4350 850 
Wire Wire Line
	4350 850  4900 850 
$Comp
L Project-ESD-rescue:R-Device-Lab1-rescue-Lab1-rescue R2
U 1 1 5E297B54
P 4350 1400
F 0 "R2" H 4420 1446 50  0000 L CNN
F 1 "5.6k" H 4420 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4280 1400 50  0001 C CNN
F 3 "~" H 4350 1400 50  0001 C CNN
	1    4350 1400
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:C-Device-Lab1-rescue-Lab1-rescue C4
U 1 1 5E297BAB
P 4900 1000
F 0 "C4" H 5015 1046 50  0000 L CNN
F 1 "100n" H 5015 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4938 850 50  0001 C CNN
F 3 "~" H 4900 1000 50  0001 C CNN
	1    4900 1000
	1    0    0    -1  
$EndComp
Connection ~ 4900 850 
Wire Wire Line
	4900 850  5500 850 
$Comp
L Project-ESD-rescue:CP-Device-Lab1-rescue-Lab1-rescue C5
U 1 1 5E297C43
P 5500 1000
F 0 "C5" H 5618 1046 50  0000 L CNN
F 1 "10u" H 5618 955 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 5538 850 50  0001 C CNN
F 3 "~" H 5500 1000 50  0001 C CNN
	1    5500 1000
	1    0    0    -1  
$EndComp
Connection ~ 5500 850 
Wire Wire Line
	5500 850  6350 850 
$Comp
L Project-ESD-rescue:+3.3V-power-Lab1-rescue-Lab1-rescue #PWR0116
U 1 1 5E297CF6
P 6350 850
F 0 "#PWR0116" H 6350 700 50  0001 C CNN
F 1 "+3.3V" H 6365 1023 50  0000 C CNN
F 2 "" H 6350 850 50  0001 C CNN
F 3 "" H 6350 850 50  0001 C CNN
	1    6350 850 
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:+5V-power-Lab1-rescue-Lab1-rescue #PWR0117
U 1 1 5E298D1C
P 1950 850
F 0 "#PWR0117" H 1950 700 50  0001 C CNN
F 1 "+5V" H 1965 1023 50  0000 C CNN
F 2 "" H 1950 850 50  0001 C CNN
F 3 "" H 1950 850 50  0001 C CNN
	1    1950 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 850  2000 850 
Wire Wire Line
	4350 1150 4350 1200
Wire Wire Line
	3250 1150 3250 1200
Wire Wire Line
	3250 1200 4350 1200
Connection ~ 4350 1200
Wire Wire Line
	4350 1200 4350 1250
Wire Wire Line
	4350 1550 4350 1700
Wire Wire Line
	2750 1150 2750 1300
Wire Wire Line
	2400 1150 2400 1300
Wire Wire Line
	2000 1150 2000 1300
Wire Wire Line
	4900 1150 4900 1300
Wire Wire Line
	5500 1150 5500 1300
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0118
U 1 1 5E2A2665
P 2000 1300
F 0 "#PWR0118" H 2000 1050 50  0001 C CNN
F 1 "GND" H 2005 1127 50  0000 C CNN
F 2 "" H 2000 1300 50  0001 C CNN
F 3 "" H 2000 1300 50  0001 C CNN
	1    2000 1300
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0119
U 1 1 5E2A26B3
P 2400 1300
F 0 "#PWR0119" H 2400 1050 50  0001 C CNN
F 1 "GND" H 2405 1127 50  0000 C CNN
F 2 "" H 2400 1300 50  0001 C CNN
F 3 "" H 2400 1300 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0120
U 1 1 5E2A2701
P 2750 1300
F 0 "#PWR0120" H 2750 1050 50  0001 C CNN
F 1 "GND" H 2755 1127 50  0000 C CNN
F 2 "" H 2750 1300 50  0001 C CNN
F 3 "" H 2750 1300 50  0001 C CNN
	1    2750 1300
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0121
U 1 1 5E2A274F
P 4900 1300
F 0 "#PWR0121" H 4900 1050 50  0001 C CNN
F 1 "GND" H 4905 1127 50  0000 C CNN
F 2 "" H 4900 1300 50  0001 C CNN
F 3 "" H 4900 1300 50  0001 C CNN
	1    4900 1300
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0122
U 1 1 5E2A279D
P 5500 1300
F 0 "#PWR0122" H 5500 1050 50  0001 C CNN
F 1 "GND" H 5505 1127 50  0000 C CNN
F 2 "" H 5500 1300 50  0001 C CNN
F 3 "" H 5500 1300 50  0001 C CNN
	1    5500 1300
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0123
U 1 1 5E2A27EB
P 4350 1700
F 0 "#PWR0123" H 4350 1450 50  0001 C CNN
F 1 "GND" H 4355 1527 50  0000 C CNN
F 2 "" H 4350 1700 50  0001 C CNN
F 3 "" H 4350 1700 50  0001 C CNN
	1    4350 1700
	1    0    0    -1  
$EndComp
Connection ~ 2000 850 
Wire Wire Line
	2000 850  2400 850 
Connection ~ 2400 850 
Wire Wire Line
	2400 850  2750 850 
Connection ~ 2750 850 
Wire Wire Line
	2750 850  3050 850 
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR01
U 1 1 5E2AED3D
P 850 5250
F 0 "#PWR01" H 850 5000 50  0001 C CNN
F 1 "GND" H 855 5077 50  0000 C CNN
F 2 "" H 850 5250 50  0001 C CNN
F 3 "" H 850 5250 50  0001 C CNN
	1    850  5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5250 850  5200
Wire Wire Line
	850  5200 950  5200
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW1
U 1 1 5E2B2B4C
P 1200 5200
F 0 "SW1" H 1050 5300 50  0000 C CNN
F 1 "SW_Push" H 1450 5300 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 1200 5400 50  0001 C CNN
F 3 "" H 1200 5400 50  0001 C CNN
	1    1200 5200
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:C-Device-Lab1-rescue-Lab1-rescue C7
U 1 1 5E2B5130
P 1200 5500
F 0 "C7" V 1452 5500 50  0000 C CNN
F 1 "100n" V 1361 5500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1238 5350 50  0001 C CNN
F 3 "~" H 1200 5500 50  0001 C CNN
	1    1200 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  5500 950  5200
Wire Wire Line
	950  5500 1050 5500
Connection ~ 950  5200
Wire Wire Line
	950  5200 1000 5200
Wire Wire Line
	1350 5500 1500 5500
Wire Wire Line
	1500 5500 1500 5200
Wire Wire Line
	1400 5200 1500 5200
Connection ~ 1500 5200
Wire Wire Line
	1500 5200 2000 5200
Wire Wire Line
	950  5050 2000 5050
Wire Wire Line
	2000 5050 2000 5200
Connection ~ 2000 5200
Wire Wire Line
	2000 5200 2050 5200
NoConn ~ 3850 4500
NoConn ~ 3850 4700
NoConn ~ 3850 5000
NoConn ~ 3850 5100
NoConn ~ 3850 5200
NoConn ~ 3850 5400
NoConn ~ 3850 5500
NoConn ~ 3850 5600
NoConn ~ 3850 5700
NoConn ~ 3850 5800
NoConn ~ 3850 5900
NoConn ~ 2050 5900
NoConn ~ 2050 5700
NoConn ~ 2050 5600
NoConn ~ 2050 5400
NoConn ~ 2050 4400
NoConn ~ 1850 1050
NoConn ~ 1850 1150
NoConn ~ 1850 1250
Wire Wire Line
	3650 850  4100 850 
Connection ~ 4100 850 
Wire Wire Line
	4100 850  4350 850 
Wire Wire Line
	3650 950  4100 950 
Connection ~ 1950 850 
$Comp
L Project-ESD-rescue:PWR_FLAG-power-Lab1-rescue-Lab1-rescue #FLG0101
U 1 1 5E300994
P 1900 750
F 0 "#FLG0101" H 1900 825 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 924 50  0000 C CNN
F 2 "" H 1900 750 50  0001 C CNN
F 3 "~" H 1900 750 50  0001 C CNN
	1    1900 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 750  1900 850 
Wire Wire Line
	1900 850  1950 850 
Wire Wire Line
	1850 850  1900 850 
Connection ~ 1900 850 
$Comp
L Project-ESD-rescue:PWR_FLAG-power-Lab1-rescue-Lab1-rescue #FLG0102
U 1 1 5E303F3C
P 1350 1700
F 0 "#FLG0102" H 1350 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 1350 1874 50  0000 C CNN
F 2 "" H 1350 1700 50  0001 C CNN
F 3 "~" H 1350 1700 50  0001 C CNN
	1    1350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1700 1350 1750
Wire Wire Line
	1350 1750 1500 1750
Connection ~ 1500 1750
Wire Wire Line
	1500 1750 1500 1800
$Comp
L Project-ESD-rescue:Buzzer-Device-Lab1-rescue-Lab1-rescue BZ1
U 1 1 5E41BFFB
P 1550 7400
F 0 "BZ1" H 1703 7429 50  0000 L CNN
F 1 "Buzzer" H 1703 7338 50  0000 L CNN
F 2 "KMGT1603:kmtg1603-1" V 1525 7500 50  0001 C CNN
F 3 "~" V 1525 7500 50  0001 C CNN
	1    1550 7400
	1    0    0    -1  
$EndComp
Text GLabel 900  7300 0    50   Input ~ 0
BZ
Text GLabel 3850 3900 2    50   Input ~ 0
BZ
$Comp
L Project-ESD-rescue:R-Device-Lab1-rescue-Lab1-rescue R4
U 1 1 5E4365CB
P 1200 7300
F 0 "R4" V 993 7300 50  0000 C CNN
F 1 "680" V 1084 7300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1130 7300 50  0001 C CNN
F 3 "" H 1200 7300 50  0001 C CNN
	1    1200 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 7300 1450 7300
Wire Wire Line
	900  7300 1050 7300
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR02
U 1 1 5E43D701
P 1450 7500
F 0 "#PWR02" H 1450 7250 50  0001 C CNN
F 1 "GND-power" H 1455 7327 50  0000 C CNN
F 2 "" H 1450 7500 50  0001 C CNN
F 3 "" H 1450 7500 50  0001 C CNN
	1    1450 7500
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:LED-Device D2
U 1 1 5E442B9E
P 1600 6900
F 0 "D2" H 1592 6645 50  0000 C CNN
F 1 "LED" H 1592 6736 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1600 6900 50  0001 C CNN
F 3 "~" H 1600 6900 50  0001 C CNN
	1    1600 6900
	-1   0    0    1   
$EndComp
$Comp
L Project-ESD-rescue:LED-Device D1
U 1 1 5E442C5E
P 1600 6450
F 0 "D1" H 1592 6195 50  0000 C CNN
F 1 "LED" H 1592 6286 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 1600 6450 50  0001 C CNN
F 3 "~" H 1600 6450 50  0001 C CNN
	1    1600 6450
	-1   0    0    1   
$EndComp
Text GLabel 900  6450 0    50   Input ~ 0
LED1
Text GLabel 900  6900 0    50   Input ~ 0
LED2
$Comp
L Project-ESD-rescue:R-Device R5
U 1 1 5E4461B7
P 1200 6450
F 0 "R5" V 993 6450 50  0000 C CNN
F 1 "330" V 1084 6450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1130 6450 50  0001 C CNN
F 3 "~" H 1200 6450 50  0001 C CNN
	1    1200 6450
	0    1    1    0   
$EndComp
$Comp
L Project-ESD-rescue:R-Device R6
U 1 1 5E446247
P 1200 6900
F 0 "R6" V 993 6900 50  0000 C CNN
F 1 "330" V 1084 6900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1130 6900 50  0001 C CNN
F 3 "~" H 1200 6900 50  0001 C CNN
	1    1200 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	900  6900 1050 6900
Wire Wire Line
	1350 6900 1450 6900
Wire Wire Line
	1450 6450 1350 6450
Wire Wire Line
	1050 6450 900  6450
Text GLabel 2050 3900 0    50   Input ~ 0
LED1
$Comp
L Project-ESD-rescue:CMWX1ZZABZ-078-cmwx1zzabz-078-Lab1-rescue-Lab1-rescue U2
U 1 1 5E285850
P 2950 4800
F 0 "U2" H 2950 3214 50  0000 C CNN
F 1 "CMWX1ZZABZ-078" H 2950 3123 50  0000 C CNN
F 2 "CMWX1ZZABZ:CMWX1ZZABZ_longer_pads" H 2950 4800 50  0001 C CNN
F 3 "https://wireless.murata.com/RFM/data/type_abz.pdf" H 5400 3300 50  0001 C CNN
	1    2950 4800
	1    0    0    -1  
$EndComp
Text GLabel 2050 4300 0    50   Input ~ 0
LED2
$Comp
L Project-ESD-rescue:Conn_01x02_Female-Connector J3
U 1 1 5E45BC29
P 1550 4100
F 0 "J3" H 1444 3775 50  0000 C CNN
F 1 "Conn_01x02_Female" H 1444 3866 50  0000 C CNN
F 2 "Connector_PinSocket_1.00mm:PinSocket_1x02_P1.00mm_Vertical_SMD_Pin1Right" H 1550 4100 50  0001 C CNN
F 3 "~" H 1550 4100 50  0001 C CNN
	1    1550 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 4000 2050 4000
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR04
U 1 1 5E45F44F
P 2050 6450
F 0 "#PWR04" H 2050 6200 50  0001 C CNN
F 1 "GND-power" H 2055 6277 50  0000 C CNN
F 2 "" H 2050 6450 50  0001 C CNN
F 3 "" H 2050 6450 50  0001 C CNN
	1    2050 6450
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR05
U 1 1 5E45F4A7
P 2050 6900
F 0 "#PWR05" H 2050 6650 50  0001 C CNN
F 1 "GND-power" H 2055 6727 50  0000 C CNN
F 2 "" H 2050 6900 50  0001 C CNN
F 3 "" H 2050 6900 50  0001 C CNN
	1    2050 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 6450 2050 6450
Wire Wire Line
	1750 6900 2050 6900
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW2
U 1 1 5E443BC5
P 8500 2000
F 0 "SW2" H 8350 2100 50  0000 C CNN
F 1 "SW_Push" H 8750 2100 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 8500 2200 50  0001 C CNN
F 3 "" H 8500 2200 50  0001 C CNN
	1    8500 2000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D3
U 1 1 5E44597F
P 8550 2300
F 0 "D3" H 8550 2516 50  0000 C CNN
F 1 "D" H 8550 2425 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8550 2300 50  0001 C CNN
F 3 "~" H 8550 2300 50  0001 C CNN
	1    8550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2000 8850 2000
Wire Wire Line
	8850 2000 8850 2300
Wire Wire Line
	8850 2300 8700 2300
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW6
U 1 1 5E447962
P 9650 2000
F 0 "SW6" H 9500 2100 50  0000 C CNN
F 1 "SW_Push" H 9900 2100 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 9650 2200 50  0001 C CNN
F 3 "" H 9650 2200 50  0001 C CNN
	1    9650 2000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D7
U 1 1 5E447969
P 9700 2300
F 0 "D7" H 9700 2516 50  0000 C CNN
F 1 "D" H 9700 2425 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9700 2300 50  0001 C CNN
F 3 "~" H 9700 2300 50  0001 C CNN
	1    9700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2000 10000 2000
Wire Wire Line
	10000 2000 10000 2300
Wire Wire Line
	10000 2300 9850 2300
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW10
U 1 1 5E449955
P 10750 2000
F 0 "SW10" H 10600 2100 50  0000 C CNN
F 1 "SW_Push" H 11000 2100 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 10750 2200 50  0001 C CNN
F 3 "" H 10750 2200 50  0001 C CNN
	1    10750 2000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D11
U 1 1 5E44995C
P 10800 2300
F 0 "D11" H 10800 2516 50  0000 C CNN
F 1 "D" H 10800 2425 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10800 2300 50  0001 C CNN
F 3 "~" H 10800 2300 50  0001 C CNN
	1    10800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 2000 11100 2000
Wire Wire Line
	11100 2000 11100 2300
Wire Wire Line
	11100 2300 10950 2300
Wire Wire Line
	8300 2000 8100 2000
Wire Wire Line
	8100 2000 8100 1650
Wire Wire Line
	9200 1650 9200 2000
Wire Wire Line
	9200 2000 9450 2000
Wire Wire Line
	9200 1650 10300 1650
Wire Wire Line
	10300 1650 10300 2000
Wire Wire Line
	10300 2000 10550 2000
Connection ~ 9200 1650
Text GLabel 7200 1650 0    50   Input ~ 0
ROW1
Connection ~ 8100 1650
Wire Wire Line
	8100 1650 9200 1650
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW3
U 1 1 5E466CC0
P 8500 3000
F 0 "SW3" H 8350 3100 50  0000 C CNN
F 1 "SW_Push" H 8750 3100 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 8500 3200 50  0001 C CNN
F 3 "" H 8500 3200 50  0001 C CNN
	1    8500 3000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D4
U 1 1 5E466CC7
P 8550 3300
F 0 "D4" H 8550 3516 50  0000 C CNN
F 1 "D" H 8550 3425 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8550 3300 50  0001 C CNN
F 3 "~" H 8550 3300 50  0001 C CNN
	1    8550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3000 8850 3000
Wire Wire Line
	8850 3000 8850 3300
Wire Wire Line
	8850 3300 8700 3300
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW7
U 1 1 5E466CD1
P 9650 3000
F 0 "SW7" H 9500 3100 50  0000 C CNN
F 1 "SW_Push" H 9900 3100 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 9650 3200 50  0001 C CNN
F 3 "" H 9650 3200 50  0001 C CNN
	1    9650 3000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D8
U 1 1 5E466CD8
P 9700 3300
F 0 "D8" H 9700 3516 50  0000 C CNN
F 1 "D" H 9700 3425 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9700 3300 50  0001 C CNN
F 3 "~" H 9700 3300 50  0001 C CNN
	1    9700 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3000 10000 3000
Wire Wire Line
	10000 3000 10000 3300
Wire Wire Line
	10000 3300 9850 3300
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW11
U 1 1 5E466CE2
P 10750 3000
F 0 "SW11" H 10600 3100 50  0000 C CNN
F 1 "SW_Push" H 11000 3100 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 10750 3200 50  0001 C CNN
F 3 "" H 10750 3200 50  0001 C CNN
	1    10750 3000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D12
U 1 1 5E466CE9
P 10800 3300
F 0 "D12" H 10800 3516 50  0000 C CNN
F 1 "D" H 10800 3425 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10800 3300 50  0001 C CNN
F 3 "~" H 10800 3300 50  0001 C CNN
	1    10800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 3000 11100 3000
Wire Wire Line
	11100 3000 11100 3300
Wire Wire Line
	11100 3300 10950 3300
Wire Wire Line
	8300 3000 8100 3000
Wire Wire Line
	8100 3000 8100 2650
Wire Wire Line
	9200 2650 9200 3000
Wire Wire Line
	9200 3000 9450 3000
Wire Wire Line
	9200 2650 10300 2650
Wire Wire Line
	10300 2650 10300 3000
Wire Wire Line
	10300 3000 10550 3000
Connection ~ 9200 2650
Text GLabel 7200 2650 0    50   Input ~ 0
ROW2
Connection ~ 8100 2650
Wire Wire Line
	8100 2650 9200 2650
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW4
U 1 1 5E46ADD8
P 8500 3950
F 0 "SW4" H 8350 4050 50  0000 C CNN
F 1 "SW_Push" H 8750 4050 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 8500 4150 50  0001 C CNN
F 3 "" H 8500 4150 50  0001 C CNN
	1    8500 3950
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D5
U 1 1 5E46ADDF
P 8550 4250
F 0 "D5" H 8550 4466 50  0000 C CNN
F 1 "D" H 8550 4375 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8550 4250 50  0001 C CNN
F 3 "~" H 8550 4250 50  0001 C CNN
	1    8550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3950 8850 3950
Wire Wire Line
	8850 3950 8850 4250
Wire Wire Line
	8850 4250 8700 4250
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW8
U 1 1 5E46ADE9
P 9650 3950
F 0 "SW8" H 9500 4050 50  0000 C CNN
F 1 "SW_Push" H 9900 4050 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 9650 4150 50  0001 C CNN
F 3 "" H 9650 4150 50  0001 C CNN
	1    9650 3950
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D9
U 1 1 5E46ADF0
P 9700 4250
F 0 "D9" H 9700 4466 50  0000 C CNN
F 1 "D" H 9700 4375 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9700 4250 50  0001 C CNN
F 3 "~" H 9700 4250 50  0001 C CNN
	1    9700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3950 10000 3950
Wire Wire Line
	10000 3950 10000 4250
Wire Wire Line
	10000 4250 9850 4250
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW12
U 1 1 5E46ADFA
P 10750 3950
F 0 "SW12" H 10600 4050 50  0000 C CNN
F 1 "SW_Push" H 11000 4050 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 10750 4150 50  0001 C CNN
F 3 "" H 10750 4150 50  0001 C CNN
	1    10750 3950
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D13
U 1 1 5E46AE01
P 10800 4250
F 0 "D13" H 10800 4466 50  0000 C CNN
F 1 "D" H 10800 4375 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10800 4250 50  0001 C CNN
F 3 "~" H 10800 4250 50  0001 C CNN
	1    10800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 3950 11100 3950
Wire Wire Line
	11100 3950 11100 4250
Wire Wire Line
	11100 4250 10950 4250
Wire Wire Line
	8300 3950 8100 3950
Wire Wire Line
	8100 3950 8100 3600
Wire Wire Line
	9200 3600 9200 3950
Wire Wire Line
	9200 3950 9450 3950
Wire Wire Line
	9200 3600 10300 3600
Wire Wire Line
	10300 3600 10300 3950
Wire Wire Line
	10300 3950 10550 3950
Connection ~ 9200 3600
Text GLabel 7200 3600 0    50   Input ~ 0
ROW3
Connection ~ 8100 3600
Wire Wire Line
	8100 3600 9200 3600
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW5
U 1 1 5E4745FF
P 8550 5000
F 0 "SW5" H 8400 5100 50  0000 C CNN
F 1 "SW_Push" H 8800 5100 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 8550 5200 50  0001 C CNN
F 3 "" H 8550 5200 50  0001 C CNN
	1    8550 5000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D6
U 1 1 5E474606
P 8600 5300
F 0 "D6" H 8600 5516 50  0000 C CNN
F 1 "D" H 8600 5425 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8600 5300 50  0001 C CNN
F 3 "~" H 8600 5300 50  0001 C CNN
	1    8600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5000 8900 5000
Wire Wire Line
	8900 5000 8900 5300
Wire Wire Line
	8900 5300 8750 5300
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW9
U 1 1 5E474610
P 9700 5000
F 0 "SW9" H 9550 5100 50  0000 C CNN
F 1 "SW_Push" H 9950 5100 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 9700 5200 50  0001 C CNN
F 3 "" H 9700 5200 50  0001 C CNN
	1    9700 5000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D10
U 1 1 5E474617
P 9750 5300
F 0 "D10" H 9750 5516 50  0000 C CNN
F 1 "D" H 9750 5425 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9750 5300 50  0001 C CNN
F 3 "~" H 9750 5300 50  0001 C CNN
	1    9750 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5000 10050 5000
Wire Wire Line
	10050 5000 10050 5300
Wire Wire Line
	10050 5300 9900 5300
$Comp
L Project-ESD-rescue:SW_Push-Switch-Lab1-rescue-Lab1-rescue SW13
U 1 1 5E474621
P 10800 5000
F 0 "SW13" H 10650 5100 50  0000 C CNN
F 1 "SW_Push" H 11050 5100 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3305C" H 10800 5200 50  0001 C CNN
F 3 "" H 10800 5200 50  0001 C CNN
	1    10800 5000
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:D-Device D14
U 1 1 5E474628
P 10850 5300
F 0 "D14" H 10850 5516 50  0000 C CNN
F 1 "D" H 10850 5425 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10850 5300 50  0001 C CNN
F 3 "~" H 10850 5300 50  0001 C CNN
	1    10850 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 5000 11150 5000
Wire Wire Line
	11150 5000 11150 5300
Wire Wire Line
	11150 5300 11000 5300
Wire Wire Line
	8350 5000 8150 5000
Wire Wire Line
	8150 5000 8150 4650
Wire Wire Line
	9250 4650 9250 5000
Wire Wire Line
	9250 5000 9500 5000
Wire Wire Line
	9250 4650 10350 4650
Wire Wire Line
	10350 4650 10350 5000
Wire Wire Line
	10350 5000 10600 5000
Connection ~ 9250 4650
Text GLabel 7250 4650 0    50   Input ~ 0
ROW4
Connection ~ 8150 4650
Wire Wire Line
	8150 4650 9250 4650
Wire Wire Line
	10700 5300 10200 5300
Wire Wire Line
	10200 5300 10200 4250
Wire Wire Line
	10200 4250 10650 4250
Wire Wire Line
	10200 4250 10200 3300
Wire Wire Line
	10200 3300 10650 3300
Connection ~ 10200 4250
Connection ~ 10200 3300
Text GLabel 10200 850  1    50   Input ~ 0
COL3
Wire Wire Line
	10650 2300 10200 2300
Connection ~ 10200 2300
Wire Wire Line
	10200 2300 10200 3300
Wire Wire Line
	9600 5300 9050 5300
Wire Wire Line
	9050 5300 9050 4250
Wire Wire Line
	9050 4250 9550 4250
Wire Wire Line
	9050 4250 9050 3300
Wire Wire Line
	9050 3300 9550 3300
Connection ~ 9050 4250
Wire Wire Line
	9050 3300 9050 2300
Wire Wire Line
	9050 2300 9550 2300
Connection ~ 9050 3300
Text GLabel 9050 850  1    50   Input ~ 0
COL2
Wire Wire Line
	8450 5300 7950 5300
Wire Wire Line
	7950 5300 7950 4250
Wire Wire Line
	7950 4250 8400 4250
Wire Wire Line
	7950 4250 7950 3300
Wire Wire Line
	7950 3300 8400 3300
Connection ~ 7950 4250
Wire Wire Line
	7950 3300 7950 2300
Wire Wire Line
	7950 2300 8400 2300
Connection ~ 7950 3300
Text GLabel 7950 850  1    50   Input ~ 0
COL1
Connection ~ 7950 2300
Connection ~ 9050 2300
Wire Wire Line
	1700 6100 2050 6100
$Comp
L Project-ESD-rescue:C-Device C8
U 1 1 5E5E5F25
P 4450 6350
F 0 "C8" H 4565 6396 50  0000 L CNN
F 1 "100n" H 4565 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4488 6200 50  0001 C CNN
F 3 "~" H 4450 6350 50  0001 C CNN
	1    4450 6350
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:C-Device C15
U 1 1 5E5E5FEF
P 5100 6350
F 0 "C15" H 5215 6396 50  0000 L CNN
F 1 "100n" H 5215 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5138 6200 50  0001 C CNN
F 3 "~" H 5100 6350 50  0001 C CNN
	1    5100 6350
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:C-Device C14
U 1 1 5E5E6092
P 4750 6100
F 0 "C14" V 4498 6100 50  0000 C CNN
F 1 "100p" V 4589 6100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4788 5950 50  0001 C CNN
F 3 "~" H 4750 6100 50  0001 C CNN
	1    4750 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 6100 4450 6100
Wire Wire Line
	4450 6100 4450 6200
Connection ~ 4450 6100
Wire Wire Line
	4450 6100 4600 6100
Wire Wire Line
	4900 6100 5100 6100
Wire Wire Line
	5100 6100 5100 6200
$Comp
L Project-ESD-rescue:Conn_Coaxial-Connector J4
U 1 1 5E602704
P 5550 6100
F 0 "J4" H 5649 6076 50  0000 L CNN
F 1 "Conn_Coaxial" H 5649 5985 50  0000 L CNN
F 2 "Connector_Coaxial:U.FL_Molex_MCRF_73412-0110_Vertical" H 5550 6100 50  0001 C CNN
F 3 " ~" H 5550 6100 50  0001 C CNN
	1    5550 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6100 5350 6100
Connection ~ 5100 6100
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0110
U 1 1 5E60C5A2
P 5550 6650
F 0 "#PWR0110" H 5550 6400 50  0001 C CNN
F 1 "GND-power" H 5555 6477 50  0000 C CNN
F 2 "" H 5550 6650 50  0001 C CNN
F 3 "" H 5550 6650 50  0001 C CNN
	1    5550 6650
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0111
U 1 1 5E60C63A
P 5100 6650
F 0 "#PWR0111" H 5100 6400 50  0001 C CNN
F 1 "GND-power" H 5105 6477 50  0000 C CNN
F 2 "" H 5100 6650 50  0001 C CNN
F 3 "" H 5100 6650 50  0001 C CNN
	1    5100 6650
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0112
U 1 1 5E60C6D2
P 4450 6650
F 0 "#PWR0112" H 4450 6400 50  0001 C CNN
F 1 "GND-power" H 4455 6477 50  0000 C CNN
F 2 "" H 4450 6650 50  0001 C CNN
F 3 "" H 4450 6650 50  0001 C CNN
	1    4450 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6500 4450 6650
Wire Wire Line
	5100 6500 5100 6650
Wire Wire Line
	5550 6300 5550 6650
$Comp
L Project-ESD-rescue:Conn_01x07_Male-Connector J5
U 1 1 5E635168
P 7650 5850
F 0 "J5" H 7623 5780 50  0000 R CNN
F 1 "Conn_01x07_Male" H 7623 5871 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical_SMD_Pin1Right" H 7650 5850 50  0001 C CNN
F 3 "~" H 7650 5850 50  0001 C CNN
	1    7650 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	7250 6150 7450 6150
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0124
U 1 1 5E65EB35
P 7250 6150
F 0 "#PWR0124" H 7250 5900 50  0001 C CNN
F 1 "GND-power" H 7255 5977 50  0000 C CNN
F 2 "" H 7250 6150 50  0001 C CNN
F 3 "" H 7250 6150 50  0001 C CNN
	1    7250 6150
	1    0    0    -1  
$EndComp
$Comp
L Project-ESD-rescue:+3V3-power #PWR0125
U 1 1 5E65EBD6
P 7250 6050
F 0 "#PWR0125" H 7250 5900 50  0001 C CNN
F 1 "+3V3" V 7265 6178 50  0000 L CNN
F 2 "" H 7250 6050 50  0001 C CNN
F 3 "" H 7250 6050 50  0001 C CNN
	1    7250 6050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 6050 7450 6050
Text GLabel 7250 5550 0    50   Input ~ 0
CS
Text GLabel 7250 5650 0    50   Input ~ 0
DC
Text GLabel 7250 5750 0    50   Input ~ 0
RES
Text GLabel 7250 5850 0    50   Input ~ 0
D1
Text GLabel 7250 5950 0    50   Input ~ 0
D0
Wire Wire Line
	7250 5950 7450 5950
Wire Wire Line
	7250 5850 7450 5850
Wire Wire Line
	7250 5750 7450 5750
Wire Wire Line
	7250 5650 7450 5650
Wire Wire Line
	7250 5550 7450 5550
Text GLabel 3850 4200 2    50   Input ~ 0
COL1
Text GLabel 3850 4100 2    50   Input ~ 0
COL2
Text GLabel 3850 4000 2    50   Input ~ 0
COL3
Text GLabel 3850 4300 2    50   Input ~ 0
DC
Text GLabel 3850 4400 2    50   Input ~ 0
CS
Text GLabel 3850 4600 2    50   Input ~ 0
D0
Text GLabel 3850 4800 2    50   Input ~ 0
D1
Text GLabel 2050 4500 0    50   Input ~ 0
ROW1
Text GLabel 2050 4600 0    50   Input ~ 0
ROW2
Text GLabel 2050 4700 0    50   Input ~ 0
ROW3
Text GLabel 2050 4800 0    50   Input ~ 0
ROW4
Text GLabel 1800 5200 3    50   Input ~ 0
RES
Wire Wire Line
	7200 3600 8100 3600
Wire Wire Line
	7200 2650 8100 2650
Wire Wire Line
	7200 1650 8100 1650
Wire Wire Line
	7250 4650 8150 4650
Wire Wire Line
	7950 850  7950 2300
Wire Wire Line
	9050 850  9050 2300
Wire Wire Line
	10200 850  10200 2300
$Comp
L Project-ESD-rescue:Conn_01x02_Female-Connector J6
U 1 1 5E4A0BF2
P 1450 4300
F 0 "J6" H 1344 3975 50  0000 C CNN
F 1 "Conn_01x02_Female" H 1344 4066 50  0000 C CNN
F 2 "Connector_PinSocket_1.00mm:PinSocket_1x02_P1.00mm_Vertical_SMD_Pin1Right" H 1450 4300 50  0001 C CNN
F 3 "~" H 1450 4300 50  0001 C CNN
	1    1450 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 4100 1750 4100
Wire Wire Line
	2050 4200 1650 4200
$Comp
L Project-ESD-rescue:GND-power-Lab1-rescue-Lab1-rescue #PWR0126
U 1 1 5E4E55F0
P 1650 4300
F 0 "#PWR0126" H 1650 4050 50  0001 C CNN
F 1 "GND-power-Lab1-rescue-Lab1-rescue" H 1655 4127 50  0000 C CNN
F 2 "" H 1650 4300 50  0001 C CNN
F 3 "" H 1650 4300 50  0001 C CNN
	1    1650 4300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
