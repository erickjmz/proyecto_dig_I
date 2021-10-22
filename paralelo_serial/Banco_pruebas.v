`timescale 	1s				/ 100ps
// escala	unidad temporal (valor de "#1") / precisión
// includes de archivos de verilog
// Pueden omitirse y llamarse desde el testbench
`include "paralelo_serial.v"
`include "Probador.v"


module Banco_pruebas; // Testbench
	// Por lo general, las señales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de módulos.
	wire		clk_4f, clk_32f, valid_in, reset_L;
	wire		[7:0] data_in;
	wire		data_out;

	// Descripción conductual
paralelo_serial paralelo_serial_conductual( /*AUTOINST*/
				  // Outputs
				  .data_out		(data_out),
				  // Inputs
				  .clk_4f		(clk_4f),
				  .clk_32f		(clk_32f),
				  .data_in		(data_in[7:0]),
				  .valid_in		(valid_in),
				  .reset_L		(reset_L));


	// Probador: generador de señales y monitor
Probador probador( /*AUTOINST*/
			  // Outputs
			  .clk_4f		(clk_4f),
			  .clk_32f		(clk_32f),
			  .data_in		(data_in[7:0]),
			  .valid_in		(valid_in),
			  .reset_L		(reset_L),
			  // Inputs
			  .data_out		(data_out));

endmodule
