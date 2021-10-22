#Makefile
CC1=iverilog
CC2=gtkwave
CC3=yosys
OBjetivo1: dependencia1
	echo Se ejecutaron los comandos de iverilog y gtkwave con éxtio y se mostró la simulación de forma automática.
dependencia1:
	$(CC3) -s Script_Yosys
	sed -i 's/paralelo_serial/synth/g' synth.v
	$(CC1) -o Banco_pruebas Banco_pruebas.v
	$(CC1) -o Probador Probador.v
	vvp Banco_pruebas
	$(CC2) P1_paralelo_serial.vcd config_8b_32b.gtkw
