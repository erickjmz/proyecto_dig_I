#Makefile
CC1=iverilog
CC2=gtkwave
CC3=yosys
OBjetivo1: dependencia1
	echo Se ejecutaron los comandos de iverilog y gtkwave con éxtio y se mostró la simulación de forma automática.
dependencia1:
	$(CC3) -s Script_Yosys
	sed -i 's/conv_32b_to_8b/conv_32b_to_8b_synth/g' conv_32b_to_8b_synth.v
	$(CC1) -o BancoPrueba BancoPrueba.v
	$(CC1) -o Probador Probador.v
	vvp BancoPrueba
	$(CC2) conv_32b_to_8b.vcd
