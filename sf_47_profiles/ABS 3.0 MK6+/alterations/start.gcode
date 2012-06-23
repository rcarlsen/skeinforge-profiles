(**** beginning of start.txt ****)
(**** begin initilization commands ****)
G21 (set units to mm)
G90 (set positioning to absolute)
M104 S220 T0 (set extruder temperature)
M109 S110 T0 (set heated-build-platform temperature)
(**** end initilization commands ****)
M107 (fan off)
(**** begin homing ****)
G92 X0 Y0 Z0 E0 (You are now at 0,0,0)
G1 F2400.0
G1 X60.0 Y-45.0 Z10.0 F3300.0 (move to waiting position)
(**** end homing ****)
(**** begin pre-wipe commands ****)
M18 (stop the motors while waiting for warmup)
M6 T0 (Wait for tool to heat up)
G1 F50.0
G1 E5 F500.0 (already at waiting position, just start extruding)
G1 F2400.0
(start wipe)
G1 X60.0 Y-45.0 Z7.5 F2500.0
G1 X45.0 Y-45.0 Z7.5 F2500.0
G1 X30.0 Y-45.0 Z0.0 F2500.0
(end wipe)
G92 E0 (You are now at E0 again)
(**** end pre-wipe commands ****)
M106 (fan on)
(**** end of start.txt ****)

