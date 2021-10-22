read_verilog serial_paralelo.v
hierarchy -check -top serial_paralelo
proc; opt; fsm; opt; memory; opt
techmap; opt
dfflibmap -liberty cmos_cells.lib
abc -liberty cmos_cells.lib
clean
write_verilog estructural.v
show
