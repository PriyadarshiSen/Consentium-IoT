EESchema Schematic File Version 4
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
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 5C5948F5
P 3700 3900
F 0 "U1" H 3700 2314 50  0000 C CNN
F 1 "ATmega328P-AU" H 3700 2223 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 3700 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3700 3900 50  0001 C CNN
	1    3700 3900
	1    0    0    -1  
$EndComp
$Comp
L RF_Module:ESP-12E U3
U 1 1 5C59498F
P 7200 3850
F 0 "U3" H 7200 4828 50  0000 C CNN
F 1 "ESP-12E" H 7200 4737 50  0000 C CNN
F 2 "RF_Modules:ESP-12E" H 7200 3850 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 6850 3950 50  0001 C CNN
	1    7200 3850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5C594AD4
P 5650 3050
F 0 "U2" H 5650 3292 50  0000 C CNN
F 1 "AMS1117-3.3" H 5650 3201 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 5650 3250 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 5750 2800 50  0001 C CNN
	1    5650 3050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5C594BBD
P 5600 4600
F 0 "SW1" H 5600 4885 50  0000 C CNN
F 1 "SW_Push" H 5600 4794 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_DIP_x1_W5.08mm_Slide_Copal_CHS-A" H 5600 4800 50  0001 C CNN
F 3 "" H 5600 4800 50  0001 C CNN
	1    5600 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5C594CCA
P 3700 1400
F 0 "#PWR02" H 3700 1250 50  0001 C CNN
F 1 "+5V" H 3715 1573 50  0000 C CNN
F 2 "" H 3700 1400 50  0001 C CNN
F 3 "" H 3700 1400 50  0001 C CNN
	1    3700 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5C594DCD
P 5200 1400
F 0 "#PWR06" H 5200 1250 50  0001 C CNN
F 1 "+5V" H 5215 1573 50  0000 C CNN
F 2 "" H 5200 1400 50  0001 C CNN
F 3 "" H 5200 1400 50  0001 C CNN
	1    5200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3050 5200 3050
Wire Wire Line
	6600 3450 6300 3450
Wire Wire Line
	6300 3450 6300 3050
Wire Wire Line
	6300 3050 7200 3050
Text Label 6600 3250 2    50   ~ 0
DTR
$Comp
L power:GND #PWR03
U 1 1 5C59500F
P 3700 5900
F 0 "#PWR03" H 3700 5650 50  0001 C CNN
F 1 "GND" H 3705 5727 50  0000 C CNN
F 2 "" H 3700 5900 50  0001 C CNN
F 3 "" H 3700 5900 50  0001 C CNN
	1    3700 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C59505D
P 5800 5850
F 0 "#PWR08" H 5800 5600 50  0001 C CNN
F 1 "GND" H 5805 5677 50  0000 C CNN
F 2 "" H 5800 5850 50  0001 C CNN
F 3 "" H 5800 5850 50  0001 C CNN
	1    5800 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3050 6300 3050
Connection ~ 6300 3050
$Comp
L power:GND #PWR07
U 1 1 5C5953ED
P 5650 3500
F 0 "#PWR07" H 5650 3250 50  0001 C CNN
F 1 "GND" H 5655 3327 50  0000 C CNN
F 2 "" H 5650 3500 50  0001 C CNN
F 3 "" H 5650 3500 50  0001 C CNN
	1    5650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3350 5650 3500
$Comp
L Device:R_Small R1
U 1 1 5C595612
P 4700 4000
F 0 "R1" H 4759 4046 50  0000 L CNN
F 1 "R_Small" H 4759 3955 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4700 4000 50  0001 C CNN
F 3 "~" H 4700 4000 50  0001 C CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5C595686
P 4700 1400
F 0 "#PWR04" H 4700 1250 50  0001 C CNN
F 1 "+5V" H 4715 1573 50  0000 C CNN
F 2 "" H 4700 1400 50  0001 C CNN
F 3 "" H 4700 1400 50  0001 C CNN
	1    4700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4100 4700 4200
Wire Wire Line
	4700 4200 4300 4200
Wire Wire Line
	5200 1400 5200 3050
Wire Wire Line
	5400 4600 4700 4600
Wire Wire Line
	4700 4600 4700 4200
Connection ~ 4700 4200
Wire Wire Line
	5800 4600 5800 5850
$Comp
L power:GND #PWR09
U 1 1 5C596312
P 7200 5900
F 0 "#PWR09" H 7200 5650 50  0001 C CNN
F 1 "GND" H 7205 5727 50  0000 C CNN
F 2 "" H 7200 5900 50  0001 C CNN
F 3 "" H 7200 5900 50  0001 C CNN
	1    7200 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5C59667B
P 5100 5250
F 0 "D1" V 5138 5133 50  0000 R CNN
F 1 "LED" V 5047 5133 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 5100 5250 50  0001 C CNN
F 3 "~" H 5100 5250 50  0001 C CNN
	1    5100 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5C596714
P 5100 5900
F 0 "#PWR05" H 5100 5650 50  0001 C CNN
F 1 "GND" H 5105 5727 50  0000 C CNN
F 2 "" H 5100 5900 50  0001 C CNN
F 3 "" H 5100 5900 50  0001 C CNN
	1    5100 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C5968AD
P 5100 3450
F 0 "R2" H 5159 3496 50  0000 L CNN
F 1 "R_Small" H 5159 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5100 3450 50  0001 C CNN
F 3 "~" H 5100 3450 50  0001 C CNN
	1    5100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3200 5100 3350
Wire Wire Line
	5100 3550 5100 5100
Wire Wire Line
	4300 3200 5100 3200
$Comp
L Device:Crystal Y1
U 1 1 5C597F12
P 2100 4650
F 0 "Y1" H 2100 4918 50  0000 C CNN
F 1 "Crystal" H 2100 4827 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-4H_Vertical" H 2100 4650 50  0001 C CNN
F 3 "~" H 2100 4650 50  0001 C CNN
	1    2100 4650
	1    0    0    -1  
$EndComp
Text Label 1800 4650 2    50   ~ 0
XTAL1
Text Label 2400 4650 0    50   ~ 0
XTAL2
Wire Wire Line
	1800 4650 1900 4650
Wire Wire Line
	2250 4650 2300 4650
$Comp
L Device:C_Small C1
U 1 1 5C598798
P 1900 4900
F 0 "C1" H 1992 4946 50  0000 L CNN
F 1 "C_Small" H 1992 4855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1900 4900 50  0001 C CNN
F 3 "~" H 1900 4900 50  0001 C CNN
	1    1900 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5C5987EA
P 2300 4900
F 0 "C2" H 2392 4946 50  0000 L CNN
F 1 "C_Small" H 2392 4855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2300 4900 50  0001 C CNN
F 3 "~" H 2300 4900 50  0001 C CNN
	1    2300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4800 1900 4650
Connection ~ 1900 4650
Wire Wire Line
	1900 4650 1950 4650
Wire Wire Line
	2300 4800 2300 4650
Connection ~ 2300 4650
Wire Wire Line
	2300 4650 2400 4650
Wire Wire Line
	1900 5000 1900 5150
Wire Wire Line
	1900 5150 2100 5150
Wire Wire Line
	2300 5150 2300 5000
$Comp
L power:GND #PWR01
U 1 1 5C5991E6
P 2100 5400
F 0 "#PWR01" H 2100 5150 50  0001 C CNN
F 1 "GND" H 2105 5227 50  0000 C CNN
F 2 "" H 2100 5400 50  0001 C CNN
F 3 "" H 2100 5400 50  0001 C CNN
	1    2100 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5400 2100 5150
Connection ~ 2100 5150
Wire Wire Line
	2100 5150 2300 5150
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 5C599804
P 1850 2950
F 0 "J2" H 1770 2525 50  0000 C CNN
F 1 "Port_B" H 1770 2616 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x05_Pitch2.00mm" H 1850 2950 50  0001 C CNN
F 3 "~" H 1850 2950 50  0001 C CNN
	1    1850 2950
	-1   0    0    1   
$EndComp
Text Label 2050 2750 0    50   ~ 0
PB4
Text Label 2050 2850 0    50   ~ 0
PB3
Text Label 2050 2950 0    50   ~ 0
PB2
Text Label 2050 3050 0    50   ~ 0
PB1
Text Label 2050 3150 0    50   ~ 0
PB0
Text Label 2050 4050 0    50   ~ 0
PD2
Text Label 2050 3950 0    50   ~ 0
PD3
Text Label 2050 3850 0    50   ~ 0
PD4
Text Label 2050 3750 0    50   ~ 0
PD5
Text Label 2050 3650 0    50   ~ 0
PD6
Text Label 2050 3550 0    50   ~ 0
PD7
Text Label 2250 1850 3    50   ~ 0
ADC_0
Text Label 2350 1850 3    50   ~ 0
ADC_1
Text Label 2450 1850 3    50   ~ 0
ADC_2
Text Label 2550 1850 3    50   ~ 0
ADC_3
Text Label 2650 1850 3    50   ~ 0
ADC_4
Text Label 2750 1850 3    50   ~ 0
ADC_5
Text Label 2850 1850 3    50   ~ 0
ADC_6
Text Label 2950 1850 3    50   ~ 0
ADC_7
Text Label 4300 3600 0    50   ~ 0
ADC_0
Text Label 4300 3700 0    50   ~ 0
ADC_1
Text Label 4300 3800 0    50   ~ 0
ADC_2
Text Label 4300 3900 0    50   ~ 0
ADC_3
Text Label 4300 4000 0    50   ~ 0
ADC_4
Text Label 4300 4100 0    50   ~ 0
ADC_5
Text Label 3100 2900 2    50   ~ 0
ADC_6
Text Label 3100 3000 2    50   ~ 0
ADC_7
Text Label 4300 3300 0    50   ~ 0
XTAL1
Text Label 4300 3400 0    50   ~ 0
XTAL2
Text Label 4300 2700 0    50   ~ 0
PB0
Text Label 4300 2800 0    50   ~ 0
PB1
Text Label 4300 2900 0    50   ~ 0
PB2
Text Label 4300 3000 0    50   ~ 0
PB3
Text Label 4300 3100 0    50   ~ 0
PB4
Text Label 4300 4400 0    50   ~ 0
RXD_AVR
Text Label 4300 4500 0    50   ~ 0
TXD_AVR
Text Label 4300 4600 0    50   ~ 0
PD2
Text Label 4300 4700 0    50   ~ 0
PD3
Text Label 4300 4800 0    50   ~ 0
PD4
Text Label 4300 4900 0    50   ~ 0
PD5
Text Label 4300 5000 0    50   ~ 0
PD6
Text Label 4300 5100 0    50   ~ 0
PD7
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 5C59EEA4
P 1850 3850
F 0 "J3" H 1770 3325 50  0000 C CNN
F 1 "Conn_01x06" H 1770 3416 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.00mm" H 1850 3850 50  0001 C CNN
F 3 "~" H 1850 3850 50  0001 C CNN
	1    1850 3850
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 5C59EF00
P 5800 2050
F 0 "J5" H 5720 1625 50  0000 C CNN
F 1 "arduino_port" H 5720 1716 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x05_Pitch2.00mm" H 5800 2050 50  0001 C CNN
F 3 "~" H 5800 2050 50  0001 C CNN
	1    5800 2050
	0    -1   -1   0   
$EndComp
Text Label 3700 2300 0    50   ~ 0
5V
Text Label 4300 4200 0    50   ~ 0
DTR
Text Label 5600 2250 3    50   ~ 0
DTR
Text Label 5700 2250 3    50   ~ 0
TXD
Text Label 5800 2250 3    50   ~ 0
RXD
Text Label 5900 2250 3    50   ~ 0
5V
Text Label 5800 5700 1    50   ~ 0
GND
Text Label 6000 2250 3    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J4
U 1 1 5C5A0233
P 4500 6550
F 0 "J4" H 4550 6867 50  0000 C CNN
F 1 "ISP" H 4550 6776 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x03_Pitch2.00mm" H 4500 6550 50  0001 C CNN
F 3 "~" H 4500 6550 50  0001 C CNN
	1    4500 6550
	1    0    0    -1  
$EndComp
Text Label 4300 6450 2    50   ~ 0
PB4
Wire Wire Line
	4700 1400 4700 3900
Wire Wire Line
	7200 4550 7200 5900
Wire Wire Line
	5100 5400 5100 5900
Wire Wire Line
	3700 5400 3700 5900
Wire Wire Line
	3800 2400 3700 2400
Connection ~ 3700 2400
Wire Wire Line
	3700 1400 3700 2400
Text Label 4300 6550 2    50   ~ 0
PB5
Text Label 4800 6550 0    50   ~ 0
PB3
Text Label 4300 6650 2    50   ~ 0
DTR
Text Label 4800 6450 0    50   ~ 0
5V
Text Label 4800 6650 0    50   ~ 0
GND
Text Label 4300 3200 0    50   ~ 0
PB5
NoConn ~ 7800 3250
NoConn ~ 6600 3650
NoConn ~ 6600 3850
NoConn ~ 6600 3950
NoConn ~ 6600 4050
NoConn ~ 6600 4150
NoConn ~ 6600 4250
NoConn ~ 6600 4350
NoConn ~ 7800 4250
NoConn ~ 7800 4150
NoConn ~ 7800 4050
NoConn ~ 7800 3950
NoConn ~ 7800 3850
NoConn ~ 7800 3750
NoConn ~ 7800 3650
NoConn ~ 7800 3450
Text Label 7800 3350 0    50   ~ 0
RXD_AVR
Text Label 7800 3550 0    50   ~ 0
TXD_AVR
$Comp
L Connector_Generic:Conn_01x09 J1
U 1 1 5C5AB973
P 2650 1650
F 0 "J1" V 2867 1646 50  0000 C CNN
F 1 "Conn_01x09" V 2776 1646 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x09_Pitch2.00mm" H 2650 1650 50  0001 C CNN
F 3 "~" H 2650 1650 50  0001 C CNN
	1    2650 1650
	0    -1   -1   0   
$EndComp
Text Label 3050 1850 3    50   ~ 0
A_ref
Text Label 3000 2700 2    50   ~ 0
A_ref
Wire Wire Line
	3000 2700 3100 2700
Connection ~ 5200 1400
Connection ~ 5700 2250
Connection ~ 5800 2250
$EndSCHEMATC
