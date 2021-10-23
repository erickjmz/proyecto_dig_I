   module Byte_Unstriping(
			   output reg [31:0] data_out, 
			   input 	     reset_L, 
			   input [31:0]      lane0,
			   input [31:0]      lane1,
			   input 	     valid_0,
			   input 	     valid_1,
			   output reg 	     valid_out,
			   input 	     clk_2f,
			   input 	     clk_f);
reg selector;
always @(posedge clk_2f) begin
if (reset_L == 0) begin
   valid_out <= 1'b0;
   selector <= 0;
   data_out <= 0;
   end
else begin
   selector <= ~selector;
   valid_out <= ~valid_out;
   if (selector == 0) begin
      data_out <= lane0;
      end
      else begin
      data_out <= lane1;
      end
   end
   valid_out<=valid_0;
   valid_out<=valid_1;
end
endmodule   
