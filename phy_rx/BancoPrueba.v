`timescale 	1ns				/ 100ps
// escala	unidad temporal (valor de "#1") / precisi�n
// includes de archivos de verilog
// Pueden omitirse y llamarse desde el testbench
`include "phy_rx.v"
`include "probador.v"
//`include "cmos_cells.v"
//`include "phy_tx_synth.v"

module BancoPruebas; // Testbench
	// Por lo general, las se�ales en el banco de pruebas son wires.
	// No almacenan un valor, son manejadas por otras instancias de m�dulos.
	wire reset_L, clk_f, clk_2f, clk_4f, clk_32f, input_1, input_2, valid_out;
	wire [31:0] salida;
	wire [2:0] counter_1, counter_2;

	phy_rx	phy_rx_conductual(
				.salida (salida),
				.valid_out (valid_out),
				.input_0 (input_1),
				.input_1 (input_2),
				.clk_f (clk_f),
				.clk_2f (clk_2f),
				.clk_4f (clk_4f),
				.clk_32f (clk_32f),
				.reset_L (reset_L));

	Probador probador(
				.input_0 (input_1),
				.input_1 (input_2),
  			.reset_L (reset_L),
				.clk_f (clk_f),
				.clk_2f (clk_2f),
				.clk_4f (clk_4f),
				.clk_32f (clk_32f),
				.BC_counter_1 (counter_1),
				.BC_counter_2 (counter_2),
  			.salida (salida),
				.valid_out (valid_out));
endmodule
