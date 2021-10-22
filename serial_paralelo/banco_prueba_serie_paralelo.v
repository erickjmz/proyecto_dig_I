
`timescale 1ns / 100ps

`include "cmos_cells.v"
`include "serial_paralelo.v"
`include "probador_serie_paralelo.v"
`include "estructural.v"

module bancoPruebas;
   wire data_in;
   wire [7:0] data_out, data_outE;
   wire       clk_32f, clk_4f, valid_out, active, activeE;
   wire [2:0] BC_counter, BC_counterE;
   
   


  serial_paralelo serie_paralelo_1(/*AUTOINST*/
				   // Outputs
				   .data_out		(data_out[7:0]),
				   .active		(active),
				   .BC_counter		(BC_counter[2:0]),
				   // Inputs
				   .data_in		(data_in),
				   .clk_32f		(clk_32f),
				   .clk_4f		(clk_4f),
				   .valid_out		(valid_out));

  probador_serie_paralelo probador_serie_paralelo_1(/*AUTOINST*/
						    // Outputs
						    .data_in		(data_in),
						    .clk_32f		(clk_32f),
						    .clk_4f		(clk_4f),
						    .valid_out		(valid_out),
						    // Inputs
						    .data_out		(data_out[7:0]),
						    .data_outE		(data_outE[7:0]),
						    .active		(active),
						    .activeE		(activeE),
						    .BC_counter		(BC_counter[2:0]),
						    .BC_counterE	(BC_counterE[2:0]));//

   estructural estructural(/*AUTOINST*/
			   // Outputs
			   .BC_counter		(BC_counterE[2:0]),
			   .active		(activeE),
			   .data_out		(data_outE[7:0]),
			   // Inputs
			   .clk_32f		(clk_32f),
			   .clk_4f		(clk_4f),
			   .data_in		(data_in),
			   .valid_out		(valid_out));
   
   
   endmodule
