; Configuration file for Duet WiFi (firmware version 2.03)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v2.1.8 on Wed Apr 29 2020 21:00:01 GMT-0400 (Eastern Daylight Time)

; General preferences
G90                                         ; send absolute coordinates...
M83                                         ; ...but relative extruder moves
M550 P"Kossel VS2500"                       ; set printer name
M665 R170.992 L288.28 B120 H226.426         ; Set delta radius, diagonal rod length, printable radius and homed height
M666 X0 Y0 Z0                               ; put your endstop adjustments here, or let auto calibration find them

; Network
M552 S1                                     ; enable network
M586 P0 S1                                  ; enable HTTP
M586 P1 S0                                  ; disable FTP
M586 P2 S0                                  ; disable Telnet

; Drives
M569 P0 S1                                  ; physical drive 0 goes forwards
M569 P1 S1                                  ; physical drive 1 goes forwards
M569 P2 S1                                  ; physical drive 2 goes forwards
M569 P3 S1                                  ; physical drive 3 goes forwards
M584 X0 Y1 Z2 E3                            ; set drive mapping
M350 X16 Y16 Z16 E16 I1                     ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z80.00 E663.00            ; set steps per mm
M566 X1200.00 Y1200.00 Z1200.00 E1200.00    ; set maximum instantaneous speed changes (mm/min)
M203 X18000.00 Y18000.00 Z18000.00 E1200.00 ; set maximum speeds (mm/min)
M201 X1000.00 Y1000.00 Z1000.00 E1000.00    ; set accelerations (mm/s^2)
M906 X1000 Y1000 Z1000 E800 I30             ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                     ; Set idle timeout

; Axis Limits
M208 Z0 S1                                  ; set minimum Z

; Endstops
M574 X2 Y2 Z2 S1                            ; set active high endstops

; Z-Probe
M558 P5 R0.4 H5 F1200 T6000                 ; set Z probe type to effector and the dive height + speeds
G31 P500 X0 Y0 Z2.5                         ; set Z probe trigger value, offset and trigger height
M557 R85 S20                                ; define mesh grid

; Heaters
M305 P0 T100000 B4138 R4700                 ; set thermistor + ADC parameters for heater 0
M143 H0 S120                                ; set temperature limit for heater 0 to 120C
M305 P1 T100000 B4138 R4700                 ; set thermistor + ADC parameters for heater 1
M143 H1 S280                                ; set temperature limit for heater 1 to 280C

; Fans

; Tools
M563 P0 D0 H1 F0                            ; define tool 0
G10 P0 X0 Y0 Z0                             ; set tool 0 axis offsets
G10 P0 R0 S0                                ; set initial tool 0 active and standby temperatures to 0C

; Custom settings are not defined

