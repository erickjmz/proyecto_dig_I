#Makefile
CC1=iverilog
CC2=gtkwave
CC3=yosys
OBjetivo1: dependencia1
	echo Se ejecutaron los comandos de iverilog y gtkwave con éxtio y se mostró la simulación de forma automática. 
dependencia1:
	$(CC3) -s Script_Yosys
	sed -i 's/Byte_Striping/Byte_Striping_synth/g' phy_tx_synth.v
	sed -i 's/conv_32b_to_8b/conv_32b_to_8b_synth/g' phy_tx_synth.v
	sed -i 's/paralelo_serial/paralelo_serial_synth/g' phy_tx_synth.v
	sed -i 's/phy_tx/phy_tx_synth/g' phy_tx_synth.v 
	$(CC1) -o BancoPrueba BancoPrueba.v
	$(CC1) -o Probador Probador.v
	vvp BancoPrueba
	$(CC2) phy_tx.vcd phy_tx.gtkw




	






