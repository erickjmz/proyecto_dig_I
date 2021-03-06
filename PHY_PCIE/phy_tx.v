`include "Byte_Striping.v"
`include "conv_32b_to_8b.v"
`include "paralelo_serial.v"

module phy_tx(
	input 		[31:0] entrada,
	input  		valid,
    input  		reset_L,
	input  		selector_tx,
	input  		clk_f,
	input  		clk_2f,
	input  		clk_4f,
	input  		clk_32f,
    output  	salida1,
	output   	salida2);

	wire cable1,cable2, cable3, cable4;
	wire [31:0] cable5, cable6;
	wire [7:0] cable7, cable8;

	Byte_Striping	Byte_Striping(
		.lane0		(cable5),
		.lane1		(cable6),
		.valid_0	(cable1),
		.valid_1	(cable2),
		.clk_2f		(clk_2f),
		.valid_in	(valid),
		.data_in	(entrada),
		.selector	(selector_tx)
	);

	conv_32b_to_8b	conv_32b_to_8b_1(
		.data_out	(cable7),
		.valid_out	(cable4),
		.data_in	(cable5),
		.valid_in	(valid),
		.clk		(clk_f),
		.clk_4f		(clk_4f)
	);

	conv_32b_to_8b	conv_32b_to_8b_2(
		.data_out	(cable8),
		.valid_out	(cable3),
		.data_in	(cable6),
		.valid_in	(valid),
		.clk		(clk_f),
		.clk_4f		(clk_4f)
	);
	
	paralelo_serial paralelo_serial_1(
		.data_out	(salida1),
		.clk_4f		(clk_4f),
		.clk_32f	(clk_32f),
		.data_in	(cable7),
		.valid_in	(valid),
		.reset_L	(reset_L)
	);

	paralelo_serial paralelo_serial_2(
		.data_out	(salida2),
		.clk_4f		(clk_4f),
		.clk_32f	(clk_32f),
		.data_in	(cable8),
		.valid_in	(valid),
		.reset_L	(reset_L)
	);

endmodule
