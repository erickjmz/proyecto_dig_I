// Módulo probador: generador de señales y monitor de datos
module Probador(
	output reg 		input_0,input_1,
  output reg  	reset_L,
	output reg  	clk_f,
	output reg  	clk_2f,
	output reg  	clk_4f,
	output reg 		clk_32f,
	output [2:0]  BC_counter_1, BC_counter_2,
  input  [31:0] 			salida,
	input  			valid_out);

	// Bloque de procedimiento, no sintetizable, se recorre una única vez
	// Generalmente, los initial sólo se usan en los testbench o probadores
	// Se recomienda siempre sincronizar con el reloj y utilizar
	// asignaciones no bloqueantes en la generación de señales

	initial begin
		$dumpfile("phy_rx.vcd");	// Nombre de archivo del "dump"
		$dumpvars;					// Directiva para "dumpear" variables
		// Mensaje que se imprime en consola una vez

			reset_L <= 0;
			input_0 <= 0;
			input_1 <= 0;
			@(posedge clk_f)
				reset_L <= 1;


			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;
	    @(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;
	    @(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

	    @(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

	    @(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

	    @(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

	    @(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;

	    @(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;



			@(posedge clk_32f)
 			input_0 <= 1;
 			input_1 <= 1;
 	    @(posedge clk_32f)
 			input_0 <= 0;
 			input_1 <= 0;
 	    @(posedge clk_32f)
 			input_0 <= 1;
 			input_1 <= 1;

 	    @(posedge clk_32f)
 			input_0 <= 1;
 			input_1 <= 1;

 	    @(posedge clk_32f)
 			input_0 <= 1;
 			input_1 <= 1;

 	    @(posedge clk_32f)
 			input_0 <= 1;
 			input_1 <= 1;

 	    @(posedge clk_32f)
 			input_0 <= 0;
 			input_1 <= 0;

 	    @(posedge clk_32f)
 			input_0 <= 0;
 			input_1 <= 0;



			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;
			@(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;
			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;

			@(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;



			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;
			@(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;
			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;

			@(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;



			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;
			@(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;
			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 1;
			input_1 <= 1;

			@(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;

			@(posedge clk_32f)
			input_0 <= 0;
			input_1 <= 0;



			@(posedge clk_32f)
 			input_0 <= 1;
 			input_1 <= 1;
 	    @(posedge clk_32f)
 			input_0 <= 0;
 			input_1 <= 0;
 	    @(posedge clk_32f)
 			input_0 <= 1;
 			input_1 <= 1;

 	    @(posedge clk_32f)
 			input_0 <= 1;
 			input_1 <= 1;

 	    @(posedge clk_32f)
 			input_0 <= 1;
 			input_1 <= 1;

 	    @(posedge clk_32f)
 			input_0 <= 1;
 			input_1 <= 1;

 	    @(posedge clk_32f)
 			input_0 <= 0;
 			input_1 <= 0;

 	    @(posedge clk_32f)
 			input_0 <= 0;
 			input_1 <= 0;

			$finish;
	end

	//Generador de relojes
		//Reloj clk_32f
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
