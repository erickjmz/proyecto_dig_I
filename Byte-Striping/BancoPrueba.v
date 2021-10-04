`timescale 	1ns				/ 100ps
// escala	unidad temporal (valor de "#1") / precisi�n
// includes de archivos de verilog
// Pueden omitirse y llamarse desde el testbench
`include "Byte_Striping.v"
`include "Probador.v"
`include "cmos_cells.v"
`include "Byte_Striping_synth.v"

module BancoPruebas; // Testbench
	// Por lo general, las se�ales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de m�dulos.
	wire clk_2f, valid_in, selector, valid_0, valid_1;
	wire [31:0] data_in, lane0, lane1;

	Byte_Striping	Byte_Striping_Coductual( /*AUTOINST*/
			    // Outputs
			    .lane0		(lane0[31:0]),
			    .lane1		(lane1[31:0]),
			    .valid_0		(valid_0),
			    .valid_1		(valid_1),
			    // Inputs
			    .clk_2f		(clk_2f),
			    .valid_in		(valid_in),
			    .data_in		(data_in[31:0]),
			    .selector		(selector));

	Byte_Striping_synth Byte_Striping_Estructural( /*AUTOINST*/
				  // Outputs
				  .lane0		(lane0[31:0]),
				  .lane1		(lane1[31:0]),
				  .valid_0		(valid_0),
				  .valid_1		(valid_1),
				  // Inputs
				  .clk_2f		(clk_2f),
				  .data_in		(data_in[31:0]),
				  .selector		(selector),
				  .valid_in		(valid_in));
	
	Probador probador( /*AUTOINST*/
			  // Outputs
			  .clk_2f		(clk_2f),
			  .valid_in		(valid_in),
			  .data_in		(data_in[31:0]),
			  .selector		(selector),
			  // Inputs
			  .lane0		(lane0[31:0]),
			  .lane1		(lane1[31:0]),
			  .valid_0		(valid_0),
			  .valid_1		(valid_1));
endmodule
