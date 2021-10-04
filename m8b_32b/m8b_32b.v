module m8b_32b (
	input		clk_4f,
	input		clk_f,
	input		[7:0] data_in,
	input		valid_in,
	input 		reset_L,
	output reg	[31:0] data_out,
	output reg	valid_out
	);
	
	reg [1:0] selector;

	always @ (posedge clk_4f) begin   
		valid_out <= valid_in;
	end
	
	always @ (posedge clk_4f) begin          
	
		if (reset_L == 0) begin
			data_out <= 'h00000000;
			selector <= 'b11;
		end

		else if ((valid_in == 1) & (reset_L == 1) & (selector == 'b11)) begin
			data_out[7:0] <= data_in;
			selector <= 00;
			valid_out <= valid_in;
		end

		else if ((valid_in == 1) & (reset_L==1) & (selector == 'b10)) begin
			data_out[15:8] <= data_in;
			selector <= 11;
			valid_out <= valid_in;
		end

		else if ((valid_in == 1) & (reset_L == 1) & (selector == 'b01)) begin			
			data_out[23:16] <= data_in;
			selector <= 10;
			valid_out <= valid_in;
		end

		else if ((valid_in == 1) & (reset_L == 1) & (selector == 'b00)) begin
			data_out[31:24] <= data_in;
			selector <= 01;
			valid_out <= valid_in;
		end			

	end
	
endmodule
