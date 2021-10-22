module probador_serie_paralelo(
			       output reg  data_in,
			       input [7:0] data_out, data_outE,
			       output reg  clk_32f,
			       output reg  clk_4f,
			       input 	   active, activeE,
			       output reg  valid_out,
			       input [2:0]	   BC_counter, BC_counterE

          );
initial begin

     $dumpfile("test.vcd");
     $dumpvars;
     $display("\t\t\tclk_32f, \tclk_4f, \tdata_in, \tselect, \tdata_out0, \tvalid");
     $monitor($time, "\t%b\t%b\t%b\t%b\t%b",clk_32f, clk_4f, data_in,  data_out, valid_out );

    valid_out <= 0;
    
    data_in <= 0;
    
    @(posedge clk_32f) data_in <= 0;
    @(posedge clk_32f) data_in <= 0;
    @(posedge clk_32f) data_in <= 0;
   
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 0;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 0;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 0;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 0;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 0;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 0;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 0;

   
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 0;


    
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 0;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;


    
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;



    
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;
   
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;


   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;
   
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;

   @(posedge clk_32f) data_in <= 1;
   valid_out <= 1;
   @(posedge clk_32f) data_in <= 0;
   valid_out <= 1;
    
    $finish;
   
 end 
 
    initial clk_32f <= 0;
   always #1 clk_32f <= ~clk_32f;

   initial clk_4f <= 0;
   always #8 clk_4f <= ~clk_4f;

endmodule // probador
