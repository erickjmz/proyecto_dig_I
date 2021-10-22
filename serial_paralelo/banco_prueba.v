
`timescale 1ns / 100ps

`include "cmos_cells.v"
`include "serial_paralelo.v"
`include "probador.v"
`include "estructural.v"

module bancoPruebas;
   wire data_in;
   wire [7:0] data_output, data_outputE;
   wire       clk_32f, clk_4f, valid_out, active, activeE;
   wire [2:0] BC_counter, BC_counterE;
   
   


  serial_paralelo serie_paralelo_1(/*AUTOINST*/
				   // Outputs
				   .active_output	(active_output),
				   .data_output		(data_output[7:0]),
				   .BC_contador		(BC_contador[2:0]),
				   // Inputs
				   .data_intput		(data_intput),
				   .valid_out		(valid_out),
				   .clk_32f		(clk_32f),
				   .clk_4f		(clk_4f));

  probador probador1(/*AUTOINST*/
		     // Outputs
		     .data_input	(data_input),
		     .clk_32f		(clk_32f),
		     .clk_4f		(clk_4f),
		     .valid_out		(valid_out),
		     // Inputs
		     .active_input	(active_input),
		     .active_inputE	(active_inputE),
		     .data_out		(data_out[7:0]),
		     .data_outE		(data_outE[7:0]),
		     .BC_counter	(BC_counter[2:0]),
		     .BC_counterE	(BC_counterE[2:0]));//

   estructural estructural(/*AUTOINST*/
			   // Outputs
			   .BC_counter		(BC_counter[2:0]),
			   .active		(active),
			   .data_out		(data_out[7:0]),
			   // Inputs
			   .clk_32f		(clk_32f),
			   .clk_4f		(clk_4f),
			   .data_in		(data_in),
			   .valid_out		(valid_out));
   
   
   endmodule
