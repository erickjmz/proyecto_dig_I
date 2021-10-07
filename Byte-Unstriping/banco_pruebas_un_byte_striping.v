`timescale 1ns /100ps
`include "Byte_Unstriping.v"
`include "probador_un_byte_striping.v"
`include "cmos_cells.v"
`include "synth.v"

module banco_pruebas;
//testbench 
wire [31:0] lane_0, lane_1;
wire [31:0] data_out, data_outE;
wire reset_L, clk_f,clk_2f, valid_1, valid_0, valid_out,valid_1E, valid_0E, valid_outE; 



Byte_Unstriping un_byte_striping_2(  /*AUTOINST*/
				    // Outputs
				    .data_out		(data_out[31:0]),
				    .valid_0		(valid_0),
				    .valid_1		(valid_1),
				    .valid_out		(valid_out),
				    // Inputs
				    .reset_L		(reset_L),
				    .lane0		(lane_0[31:0]),
				    .lane1		(lane_1[31:0]),
				    .clk_2f		(clk_2f),
				    .clk_f		(clk_f));


probador_un_byte_striping probador_1Un(           /*AUTOINST*/
				       // Outputs
				       .clk_2f		(clk_2f),
				       .clk_f		(clk_f),
				       .reset_L		(reset_L),
				       .lane_0_prob	(lane_0[31:0]),
				       .lane_1_prob	(lane_1[31:0]),
				       // Inputs
				       .data_out	(data_out[31:0]),
				       .data_outE	(data_outE[31:0]),
				       .valid_out	(valid_out),
				       .valid_outE	(valid_outE),
				       .valid_0		(valid_0),
				       .valid_0E	(valid_0E),
				       .valid_1		(valid_1),
				       .valid_1E	(valid_1E));

   synth estructural(/*AUTOINST*/
		     // Outputs
		     .data_out		(data_outE[31:0]),
		     .valid_0		(valid_0E),
		     .valid_1		(valid_1E),
		     .valid_out		(valid_outE),
		     // Inputs
		     .clk_2f		(clk_2f),
		     .clk_f		(clk_f),
		     .lane0		(lane_0[31:0]),
		     .lane1		(lane_1[31:0]),
		     .reset_L		(reset_L));
   
endmodule
