// Módulo probador: generador de señales y monitor de datos
module Probador(
	output reg 		[31:0] phy_input,
	output reg  	valid,
    output reg  	reset_L,
	output reg  	selector,
	output reg  	clk_f,
	output reg  	clk_2f,
	output reg  	clk_4f,
	output reg  	clk_32f,
    input 			[31:0] phy_output
	);

	// Bloque de procedimiento, no sintetizable, se recorre una única vez
	// Generalmente, los initial sólo se usan en los testbench o probadores
	// Se recomienda siempre sincronizar con el reloj y utilizar
	// asignaciones no bloqueantes en la generación de señales

	initial begin
		$dumpfile("phy.vcd");	// Nombre de archivo del "dump"
		$dumpvars;					// Directiva para "dumpear" variables
		// Mensaje que se imprime en consola una vez
		
			valid <= 1;
			phy_input <= 'b0;
			selector <= 1;

        	@(posedge clk_2f);
			valid <= 1;
			phy_input <= 32'hFFFFFFFF;
			selector <= 0;

        	@(posedge clk_2f);
			valid <= 1;
			phy_input <= 32'hEEEEEEEE;
			selector <= 1;

        	@(posedge clk_2f);
			valid <= 1;
			phy_input <= 32'hDDDDDDDD;
			selector <= 0;

        	@(posedge clk_2f);
			valid <= 1;
			phy_input <= 32'hCCCCCCCC;
			selector <= 1;

			@(posedge clk_2f);
			valid <= 0;
			phy_input <= 32'hBBBBBBBB;
			selector <= 0;

        	@(posedge clk_2f);
			valid <= 0;
			phy_input <= 32'hAAAAAAAA;
			selector <= 1;

			@(posedge clk_2f);
			valid <= 1;
			phy_input <= 32'h00000003;
			selector <= 0;

			@(posedge clk_2f);
			valid <= 1;
			phy_input <= 32'h00000004;
			selector <= 1;

			@(posedge clk_2f);
			valid <= 0;
			phy_input <= 32'h00000005;
			selector <= 0;

			@(posedge clk_2f);
			valid <= 0;
			phy_input <= 32'h00000006;
			selector <= 1;

			@(posedge clk_2f);
			valid <= 1;
			phy_input <= 32'hAAAAAAAA;
			selector <= 0;

			@(posedge clk_2f);
			valid <= 1;
			phy_input <= 32'h99999999;
			selector <= 1;

			@(posedge clk_2f);
			valid <= 0;
			phy_input <= 32'hBBBBBBBB;
			selector <= 0;

			@(posedge clk_2f);
			valid <= 0;
			phy_input <= 32'h88888888;
			selector <= 1;

			@(posedge clk_2f);
			valid <= 1;
			phy_input <= 32'h00000007;
			selector <= 0;

			@(posedge clk_2f);
			valid <= 1;
			phy_input <= 32'h00000008;
			selector <= 1;

			@(posedge clk_2f);
			valid <= 0;
			phy_input <= 32'h00000009;
			selector <= 0;

			@(posedge clk_2f);
			valid <= 0;
			phy_input <= 32'h00000001;
			selector <= 1;

			@(posedge clk_2f);	
			valid <= 1;
			phy_input <= 'b0;
			selector <= 'b0;
			$finish;			
	end

	//Generador de relojes
		//Reloj clk_f
		initial	clk_f <= 0;			
		always	#96 clk_f <= ~clk_f;		
		//Reloj clk_2f
		initial	clk_2f <= 0;			
		always	#48 clk_2f <= ~clk_2f;		
		//Reloj clk_4f
		initial	clk_4f <= 0;			
		always	#24 clk_4f <= ~clk_4f;		
		//Reloj clk_32f
		initial	clk_32f <= 0;			
		always	#3 clk_32f <= ~clk_32f;		

endmodule
