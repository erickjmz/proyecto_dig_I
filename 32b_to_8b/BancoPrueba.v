`timescale 	1ns				/ 100ps
// escala	unidad temporal (valor de "#1") / precisi�n
// includes de archivos de verilog
// Pueden omitirse y llamarse desde el testbench
`include "conv_32b_to_8b.v"
`include "Probador.v"
`include "cmos_cells.v"
`include "conv_32b_to_8b_synth.v"

module BancoPruebas; // Testbench
	// Por lo general, las se�ales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de m�dulos.
	wire clk_4f, clk, valid_in, sel, valid_out;
	wire [31:0] data_in;
	wire [7:0] data_out;

	conv_32b_to_8b	conv_32b_to_8b_Coductual( /*AUTOINST*/
			    // Outputs
			    .data_out		(data_out[7:0]),
			    .valid_out		(valid_out),
			    // Inputs
					.data_in		(data_in[31:0]),
					.valid_in		(valid_in),
					.clk	(clk),
					.clk_4f	(clk_4f));

  conv_32b_to_8b_synth conv_32b_to_8b_Estructural( /*AUTOINST*/
	 				// Outputs
	 				.data_out		(data_out[7:0]),
	 				.valid_out		(valid_out),
	 				// Inputs
	 				.clk	(clk),
	 				.clk_4f	(clk_4f),
					.data_in		(data_in[31:0]),
	 				.valid_in		(valid_in));

  Probador probador( /*AUTOINST*/
			  // Outputs
				.clk_4f		(clk_4f),
			  .clk		(clk),
			  .valid_in		(valid_in),
			  .data_in		(data_in[31:0]),
			  .sel		(sel),
			  // Inputs
			  .valid_out		(valid_out),
				.data_out 		(data_out[7:0]));
endmodule
