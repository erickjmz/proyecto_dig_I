`timescale 	1s				/ 100ps
// escala	unidad temporal (valor de "#1") / precisión
// includes de archivos de verilog
// Pueden omitirse y llamarse desde el testbench
`include "m8b_32b.v"
`include "synth.v"
`include "Probador.v"
`include "cmos_cells.v"


module Banco_pruebas; // Testbench
	// Por lo general, las señales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de módulos.
	wire		clk_4f, clk_f, valid_in, reset_L, valid_out;
	wire		[7:0] data_in;
	wire		[31:0] data_out;

	// Descripción conductual 
	m8b_32b m8b32b_conductual( /*AUTOINST*/
				  // Outputs
				  .data_out		(data_out[31:0]),
				  .valid_out		(valid_out),
				  // Inputs
				  .clk_4f		(clk_4f),
				  .clk_f		(clk_f),
				  .data_in		(data_in[7:0]),
				  .valid_in		(valid_in),
				  .reset_L		(reset_L));
						     
	
	synth m8b32b_estrcutural( /*AUTOINST*/
				 // Outputs
				 .data_out		(data_out[31:0]),
				 .valid_out		(valid_out),
				 // Inputs
				 .clk_4f		(clk_4f),
				 .clk_f			(clk_f),
				 .data_in		(data_in[7:0]),
				 .reset_L		(reset_L),
				 .valid_in		(valid_in));
	

	// Probador: generador de señales y monitor
	Probador probador( /*AUTOINST*/
			  // Outputs
			  .clk_4f		(clk_4f),
			  .clk_f		(clk_f),
			  .data_in		(data_in[7:0]),
			  .valid_in		(valid_in),
			  .reset_L		(reset_L),
			  // Inputs
			  .data_out		(data_out[31:0]),
			  .valid_out		(valid_out));

endmodule
