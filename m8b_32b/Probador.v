// Módulo probador: generador de señales y monitor de datos
module Probador(
	output reg		clk_4f,
	output reg		clk_f,
	output reg		[7:0] data_in,
	output reg		valid_in,
	output reg 		reset_L,	
	input			[31:0] data_out,
	input			valid_out);

	// Bloque de procedimiento, no sintetizable, se recorre una única vez
	// Generalmente, los initial sólo se usan en los testbench o probadores
	// Se recomienda siempre sincronizar con el reloj y utilizar
	// asignaciones no bloqueantes en la generación de señales
	
	initial begin
		$dumpfile("P1.vcd"); // Nombre de archivo del "dump"
		$dumpvars; // Directiva para "dumpear" variables
		
			data_in = 'b0;
			reset_L = 'b0 ;
			valid_in = 'b0;
			#3 reset_L = 'b1 ;
			#2 valid_in = 'b1;

			@(posedge clk_4f);
        	data_in <= 'hFF;
        	valid_in <= 1;

         	@(posedge clk_4f);
        	data_in <= 'hFF;
        	valid_in <= 1;

		 	@(posedge clk_4f);
        	data_in <= 'hFF;
        	valid_in <= 1;

			@(posedge clk_4f);
        	data_in <= 'hFF;
        	valid_in <= 1;

			@(posedge clk_4f);
        	data_in <= 'hDD;
        	valid_in <= 1;

         	@(posedge clk_4f);
        	data_in <= 'hDD;
        	valid_in <= 1;

		 	@(posedge clk_4f);
        	data_in <= 'hDD;
        	valid_in <= 1;

		 	@(posedge clk_4f);
        	data_in <= 'hDD;
        	valid_in <= 1;
	
			@(posedge clk_4f);
        	data_in <= 'hAA;
        	valid_in <= 0;

         	@(posedge clk_4f);
        	data_in <= 'hAA;
        	valid_in <= 0;

		 	@(posedge clk_4f);
        	data_in <= 'hAA;
        	valid_in <= 0;

		 	@(posedge clk_4f);
        	data_in <= 'hAA;
        	valid_in <= 0;

			@(posedge clk_4f);
        	data_in <= 'h00;
        	valid_in <= 1;

         	@(posedge clk_4f);
        	data_in <= 'h00;
        	valid_in <= 1;

		 	@(posedge clk_4f);
        	data_in <= 'h00;
        	valid_in <= 1;

		 	@(posedge clk_4f);
        	data_in <= 'h03;
        	valid_in <= 1;
		
        	@(posedge clk_4f);
        	data_in <= 'hAA;
        	valid_in <= 0;

         	@(posedge clk_4f);
        	data_in <= 'hBB;
        	valid_in <= 0;

		 	@(posedge clk_4f);
        	data_in <= 'hCC;
        	valid_in <= 0;

			@(posedge clk_4f);
        	data_in <= 'hDD;
        	valid_in <= 0;

			@(posedge clk_4f);
        	data_in <= 'hAA;
        	valid_in <= 1;

         	@(posedge clk_4f);
        	data_in <= 'hBB;
        	valid_in <= 1;

		 	@(posedge clk_4f);
        	data_in <= 'hCC;
        	valid_in <= 1;

			@(posedge clk_4f);
        	data_in <= 'hDD;
        	valid_in <= 1;

			@(posedge clk_4f);
        	data_in <= 'h01;
        	valid_in <= 1;

         	@(posedge clk_4f);
        	data_in <= 'h02;
        	valid_in <= 1;

		 	@(posedge clk_4f);
        	data_in <= 'h03;
        	valid_in <= 1;

			@(posedge clk_4f);
        	data_in <= 'h04;
        	valid_in <= 1;

			@(posedge clk_4f);
        	data_in <= 'h05;
        	valid_in <= 1;

         	@(posedge clk_4f);
        	data_in <= 'h06;
        	valid_in <= 1;

		$finish;
		
	end
	
	// Reloj
	initial	clk_4f	<= 0;			
	always  #2 		clk_4f 	<= ~clk_4f;	

	// Reloj
	initial	clk_f	<= 0;			
	always  #7 	clk_f <= ~clk_f;
	
endmodule
