`include "Gen_relojes.v"
`include "tester_reg.v"
`include "cmos_cells.v"
`include "Gen_relojes_synth.v"

`timescale 1ns / 1ps
// fpga4student.com FPGA projects, VHDL projects, Verilog projects
// Verilog project: Verilog code for clock divider on FPGA
// Testbench Verilog code for clock divider on FPGA
module Testbench_reg;
 // Inputs
    wire clk_in;
 // Outputs
    wire clk_out_f, clk_out_2f, clk_out_4f;
 // Instantiate the Unit Under Test (UUT)
 // Test the clock divider in Verilog
    Gen_relojes #(.DIVISOR(32'd6)) clk_4f_cond (/*AUTOINST*/
            .clk_in     (clk_in), 
            .clk_out    (clk_out_4f)
    );
    Gen_relojes clk_2f_cond (/*AUTOINST*/
            .clk_in     (clk_out_4f), 
            .clk_out    (clk_out_2f)
    );
    Gen_relojes clk_f_cond (/*AUTOINST*/
            .clk_in      (clk_out_2f), 
            .clk_out     (clk_out_f)
    );
    Gen_relojes #(.DIVISOR(32'd6)) clk_4f_estr (/*AUTOINST*/
            .clk_in     (clk_in), 
            .clk_out    (clk_out_4f)
    );
    Gen_relojes clk_2f_estr (/*AUTOINST*/
            .clk_in     (clk_out_4f), 
            .clk_out    (clk_out_2f)
    );
    Gen_relojes clk_f_estr (/*AUTOINST*/
            .clk_in      (clk_out_2f), 
            .clk_out     (clk_out_f)
    );
    tester_reg test (/*AUTOINST*/
            .clk_in     (clk_in),
            .clk_out_f  (clk_out_f),
            .clk_out_2f (clk_out_2f),
            .clk_out_4f (clk_out_4f)
    );



endmodule

