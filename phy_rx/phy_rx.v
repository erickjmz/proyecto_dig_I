`include "Byte_Unstriping.v"
`include "m8b_32b.v"
`include "serial_paralelo.v"

module phy_rx (
  output [31:0] salida,
  output valid_out,
  input input_0,
  input input_1,
  input clk_f, clk_2f, clk_4f, clk_32f,
  input reset_L
  );

  wire [31:0] final_out;
  wire [31:0] lane_0, lane_1;
  wire [7:0] out_8b_0, out_8b_1;
  wire valid_32b_0, valid_32b_1;
  wire valid_par_0, valid_par_1;
  wire valid_out_par_0, valid_out_par_1;
  wire [2:0] BC_counter_1,  BC_counter_2;

  Byte_Unstriping byte_unstriping(
        .data_out (salida),
        .reset_L (reset_L),
        .lane0 (lane_0),
        .lane1 (lane_1),
        .valid_0 (valid_32b_0),
        .valid_1 (valid_32b_1),
        .valid_out (valid_out),
        .clk_2f (clk_2f),
        .clk_f (clk_f));


  m8b_32b conv_8b_to_32b_0(
        .clk_4f (clk_4f),
        .clk_f (clk_f),
        .data_in (out_8b_0),
        .valid_in (valid_par_0),
        .reset_L (reset_L),
        .data_out(lane_0),
        .valid_out (valid_32b_0)
  );


  m8b_32b conv_8b_to_32b_1(
        .clk_4f (clk_4f),
        .clk_f (clk_f),
        .data_in (out_8b_1),
        .valid_in (valid_par_1),
        .reset_L (reset_L),
        .data_out (lane_1),
        .valid_out (valid_32b_1)
  );

  serial_paralelo serial_paralelo_0(
     		.data_input (input_0),
        .data_output (out_8b_0),
     		.clk_32f (clk_32f),
     		.clk_4f (clk_4f),
        .active_output (valid_par_0),
     		.valid_out (valid_out_par_0),
        .BC_contador (BC_counter_1)
  );

  serial_paralelo serial_paralelo_1(
        .data_input (input_1),
        .data_output (out_8b_1),
        .clk_32f (clk_32f),
        .clk_4f (clk_4f),
        .active_output (valid_par_1),
        .valid_out (valid_out_par_1),
        .BC_contador (BC_counter_2)
  );

endmodule // phy_rx
