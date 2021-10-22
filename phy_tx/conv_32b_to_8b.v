module conv_32b_to_8b(input [31:0] data_in,
                      input clk, clk_4f, valid_in,
                      output reg[7:0] data_out,
                      output reg valid_out);

reg [1:0] sel;
always @ ( posedge clk_4f ) begin
  if (valid_in == 0) begin
      data_out<=0;
      valid_out<=0;
      sel<=0;
  end
  else begin
    if(sel=='b11) begin
      data_out[7:0]<=data_in[7:0];
      valid_out<=valid_in;
    end
    if (sel=='b10) begin
      data_out[7:0]<=data_in[15:8];
      valid_out<=valid_in;
    end
    if (sel=='b01) begin
      data_out[7:0]<=data_in[23:16];
      valid_out<=valid_in;
    end
    if (sel=='b00) begin
      data_out[7:0]<=data_in[31:24];
      valid_out<=valid_in;
    end
    sel<=sel+2'b01;
  end
end
endmodule //conv_32b_to_8b_synth
