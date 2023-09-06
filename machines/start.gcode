G92 E0 ; Reset Extruder

M104 S{material_standby_temperature} ; Start heating up the nozzle most of the way
M140 S{material_bed_temperature_layer_0} ; Start heating the bed

G28 ; Home all axes
M420 S1 ; restore the last mesh data

G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position

M190 S{material_bed_temperature_layer_0} ; Finish heating the bed, wait until target temperature reached
M109 S{material_print_temperature_layer_0} ; Finish heating the nozzle

G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed

G1 X0.1 Y200.0 Z0.3 F2000.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F2000.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish