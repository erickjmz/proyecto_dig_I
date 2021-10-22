#makefile
CC1=iverilog
CC2=gtkwave
CC3=yosys
OBjetivo1: dependencia1
	echo Se ejecutaron los comandos de iverilog y gtkwave con éxtio y se mostró la simulación de forma automática.

dependencia1:
	$(CC3) -s yosys.s
	sed -i 's/serial_paralelo/estructural/g'  estructural.v
	$(CC1) -o Banco_pruebas banco_prueba.v
	$(CC1) -o Probador probador.v
	vvp Banco_pruebas
	$(CC2) test.vcd 
	


