module paralelo_serial(
	input		clk_4f,
	input		clk_32f,
	input 	reset_L,
	input		[7:0] data_in,
	input		valid_in,
	output reg	data_out
	);
	reg [2:0] selector = 'b000;
	reg [7:0] tmp_out;

always @ (posedge clk_32f or negedge reset_L) begin
		tmp_out <= data_in;
		if (reset_L == 0) begin
			data_out <= 0;
			selector <= 'b000;
		end
		else	begin
			if (valid_in == 0) begin
				tmp_out <= 'hBC;
			end
			else begin
					if (selector == 'b000) begin
						data_out <= tmp_out[7];
					end
					if (selector == 'b001) begin
						data_out <= tmp_out[6];
					end
					if (selector == 'b010) begin
						data_out <= tmp_out[5];
					end
					if (selector == 'b011) begin
						data_out <= tmp_out[4];
					end
					if (selector == 'b100) begin
						data_out <= tmp_out[3];
					end
					if (selector == 'b101) begin
						data_out <= tmp_out[2];
					end
					if (selector == 'b110) begin
						data_out <= tmp_out[1];
					end
					if (selector == 'b111) begin
						data_out <= tmp_out[0];
					end
			end
			if (selector == 7 ) begin
				selector <= 'b000;
			end
			else begin
				selector <= selector + 'b001;
			end
		end
end

endmodule
