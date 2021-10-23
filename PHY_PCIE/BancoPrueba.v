`timescale 	1ns				/ 100ps
// escala	unidad temporal (valor de "#1") / precisi�n
// includes de archivos de verilog
// Pueden omitirse y llamarse desde el testbench
`include "phy.v"
`include "Probador.v"
`include "cmos_cells.v"

module BancoPruebas; // Testbench
	wire valid, reset_L, selector, clk_f, clk_2f, clk_4f, clk_32f;
	wire [31:0] phy_input, phy_output;

	phy	phy_conductual( /*AUTOINST*/

	);

	//phy	phy_estructural( /*AUTOINST*/

	//);

	Probador probador( /*AUTOINST*/

	);

endmodule
