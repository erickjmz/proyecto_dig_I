`include "phy_tx.v"
`include "phy_rx.v"

module phy(
	input 		[31:0] phy_input,
	input  		valid,
    input  		reset_L,
	input  		selector,
	input  		clk_f,
	input  		clk_2f,
	input  		clk_4f,
	input  		clk_32f,
    output  	[31:0] phy_output
	);

	wire cableX, cableY;

	phy_tx	phy_tx( /*AUTOINST*/
		// Outputs
		.salida1		(cableX),
		.salida2		(cableY),
		// Inputs
		.entrada		(phy_input),
		.valid			(valid),
		.reset_L		(reset_L),
		.selector_tx	(selector),
		.clk_f			(clk_f),
		.clk_2f			(clk_2f),
		.clk_4f			(clk_4f),
		.clk_32f		(clk_32f)
	);

	phy_rx	phy_rx(

	);



	

endmodule
