CC1=iverilog
CC2=gtkwave
CC3=yosys

objetivo1: dependencia1
	echo Se ejecutaron los comandos de iverilog y gtkwave con éxtio y se mostró la simulación de forma automática. 
dependencia1:
	$(CC3) -s Script_Yosys
	sed -i 's/Byte_Unstriping/synth/g' synth.v 
	$(CC1) -o banco_pruebas_un_byte_striping banco_pruebas_un_byte_striping.v
	$(CC1) -o probador_un_byte_striping probador_un_byte_striping.v
	vvp banco_pruebas_un_byte_striping
	$(CC2) test.vcd config_ByteUnstriping.gtkw



