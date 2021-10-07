module probador_un_byte_striping(

output reg 	      clk_2f,
output reg 	      clk_f,
output reg        reset_L,
input [31:0]      data_out, data_outE,
input             valid_out, valid_outE,
output reg [31:0]      lane_0_prob,
input             valid_0, valid_0E,
output reg [31:0]      lane_1_prob,
input             valid_1,valid_1E

);
initial 
begin
    $dumpfile("test.vcd");
	$dumpvars;

    {lane_0_prob, lane_1_prob, reset_L} = 3'b0;    //------ El clk ya se esta cambiando en el codigo de la linea 27. Linea antes: {data_in,reset_L,clk} = 'b0; 
    @(posedge clk_f);
    @(posedge clk_f);
    repeat (16) begin
    @(posedge clk_f);
    reset_L<= 1;
    {lane_0_prob, lane_1_prob} <= {lane_0_prob, lane_1_prob} + 22246423543637547; //------ El clk ya se esta cambiando en el codigo de la linea 27. Linea antes: {data_in,reset_L,clk} <= {data_in,reset_L,clk} + 1 
    end
    @(posedge clk_f);
    {lane_0_prob, lane_1_prob} <= 'b0; //------ El clk ya se esta cambiando en el codigo de la linea 27. Linea antes: {data_in,reset_L,clk} <= 'b0;
    $finish;
end

//reloj 
    initial clk_2f <= 0;
   always #4 clk_2f <= ~clk_2f;
    initial clk_f <= 0;
   always #8 clk_f <= ~clk_f;


  
endmodule
