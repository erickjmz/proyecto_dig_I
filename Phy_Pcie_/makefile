#Makefile
CC1=iverilog
CC2=gtkwave
CC3=yosys
OBjetivo1: dependencia1
	echo Se ejecutaron los comandos de iverilog y gtkwave con éxito y se mostró la simulación de forma automática. 
dependencia1:
	$(CC3) -s Script_Yosys
	sed -i 's/Phy_Pcie_/Gen_relojes_synth/g' Gen_relojes_synth.v 
	$(CC1) -o Testbench_reg.out Testbench_reg.v
	vvp Testbench_reg.out
	$(CC2) reloj.vcd config_reg.gtkw