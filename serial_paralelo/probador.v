module probador(
			       output reg  data_input,
                output reg  clk_32f,
			       output reg  clk_4f,
                output reg  valid_out,
                input 	   active_input, active_inputE,
			       input [7:0] data_output, data_outputE,
			       input [2:0]	   BC_contador, BC_contadorE
          );
initial begin

     $dumpfile("test.vcd");
     $dumpvars;
     $display("\t\t\tclk_32f, \tclk_4f, \tdata_in, \tselect, \tdata_out0, \tvalid");
     $monitor($time, "\t%b\t%b\t%b\t%b\t%b",clk_32f, clk_4f, data_input,  data_output, valid_out );

    valid_out <= 0;
    
    data_input <= 0;
    
    @(posedge clk_32f) data_input <= 0;
    @(posedge clk_32f) data_input <= 0;
    @(posedge clk_32f) data_input <= 0;
   
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 0;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 0;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 0;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 0;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 0;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 0;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 0;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 0;

//---------------------------------------------
    
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 0;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;

//---------------------------------------------
    
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;   
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;

//---------------------------------------------
    
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;

//---------------------------------------------

   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;

//---------------------------------------------

   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;

//---------------------------------------------

   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;

//--------------------------------------------

   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   
//--------------------------------------------

   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;

//-------------------------------------------

   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;

//-------------------------------------------

   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_input <= 0;
   valid_out <= 1;
    
    $finish;
   
 end 
 
    initial clk_32f <= 0;
   always #1 clk_32f <= ~clk_32f;

   initial clk_4f <= 0;
   always #8 clk_4f <= ~clk_4f;

endmodule // probador
