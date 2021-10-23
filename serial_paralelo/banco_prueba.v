
`timescale 1ns / 100ps

`include "cmos_cells.v"
`include "serial_paralelo.v"
`include "probador.v"
`include "estructural.v"

module bancoPruebas;
   wire data_input;
   wire [7:0] data_output, data_outputE;
   wire       clk_32f, clk_4f, valid_out, active, activeE;
   wire [2:0] BC_contador, BC_contadorE;
   
   


  serial_paralelo serie_paralelo_1(/*AUTOINST*/
				   // Outputs
				   .active_output	(active),
				   .data_output		(data_output[7:0]),
				   .BC_contador		(BC_contador[2:0]),
				   // Inputs
				   .data_input		(data_input),
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
		     .active_input	(active),
		     .active_inputE	(activeE),
		     .data_output		(data_output[7:0]),
		     .data_outputE		(data_outputE[7:0]),
		     .BC_contador	(BC_contador[2:0]),
		     .BC_contadorE	(BC_contadorE[2:0]));//

   estructural estructural(/*AUTOINST*/
			   // Outputs
			   .BC_contador		(BC_contadorE[2:0]),
			   .active_output		(activeE),
			   .data_output		(data_outputE[7:0]),
			   // Inputs
			   .clk_32f		(clk_32f),
			   .clk_4f		(clk_4f),
			   .data_input		(data_input),
			   .valid_out		(valid_out));
   
   
   endmodule
