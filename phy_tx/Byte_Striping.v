module Byte_Striping (
	//Entradas y salidas
	input       clk_2f,
	input		valid_in,	
	input 		[31:0] data_in,
	input 		selector,
    output reg  [31:0] lane0,
	output reg  [31:0] lane1,
	output reg  valid_0,
	output reg  valid_1
    );
	
	always @ (posedge clk_2f) begin
		if (selector == 0 & valid_in == 1)begin
		 	lane0 <= data_in;
			valid_0 <= 1;
		end
		if (selector == 1 & valid_in == 1)begin
			lane1 <= data_in;
			valid_1 <= 1;
		end
	end

endmodule
