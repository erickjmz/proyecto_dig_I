`timescale 	1ns				/ 100ps
// escala	unidad temporal (valor de "#1") / precisi�n
// includes de archivos de verilog
// Pueden omitirse y llamarse desde el testbench
`include "phy_tx.v"
`include "Probador.v"
`include "cmos_cells.v"
`include "phy_tx_synth.v"

module BancoPruebas; // Testbench
	// Por lo general, las se�ales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de m�dulos.
	wire valid, reset_L, selector_tx, clk_f, clk_2f, clk_4f, clk_32f, salida1, salida2, sel;
	wire [31:0] entrada;

	phy_tx	phy_tx_conductual( /*AUTOINST*/
				  // Outputs
				  .salida1		(salida1),
				  .salida2		(salida2),
				  // Inputs
				  .entrada		(entrada[31:0]),
				  .valid		(valid),
				  .reset_L		(reset_L),
				  .selector_tx		(selector_tx),
				  .clk_f		(clk_f),
				  .clk_2f		(clk_2f),
				  .clk_4f		(clk_4f),
				  .clk_32f		(clk_32f));
	
	Probador probador( /*AUTOINST*/
			  // Outputs
			  .entrada		(entrada[31:0]),
			  .valid		(valid),
			  .reset_L		(reset_L),
			  .selector_tx		(selector_tx),
			  .clk_f		(clk_f),
			  .clk_2f		(clk_2f),
			  .clk_4f		(clk_4f),
			  .clk_32f		(clk_32f),
			  .sel			(sel),
			  // Inputs
			  .salida1		(salida1),
			  .salida2		(salida2));
	
	phy_tx_synth	phy_tx_estructural( /*AUTOINST*/
					   // Outputs
					   .salida1		(salida1),
					   .salida2		(salida2),
					   // Inputs
					   .clk_2f		(clk_2f),
					   .clk_32f		(clk_32f),
					   .clk_4f		(clk_4f),
					   .clk_f		(clk_f),
					   .entrada		(entrada[31:0]),
					   .reset_L		(reset_L),
					   .selector_tx		(selector_tx),
					   .valid		(valid));
endmodule
