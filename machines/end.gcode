M220 S100 ; Reset Speed factor override percentage to default (100%)
M221 S100 ; Reset Extrude factor override percentage to default (100%)

G91 ;Relative positioning

G1 Z15 F2000 ;Raise Z

G90 ;Absolute positioning

G1 X0 Y{machine_depth} F3000 ;Present print

M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

M84 X Y E ;Disable all steppers but Z

; Play a completion tune
M300 S220 P50