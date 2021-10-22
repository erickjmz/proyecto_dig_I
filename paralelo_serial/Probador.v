// Módulo probador: generador de señales y monitor de datos
module Probador(
	output reg		clk_4f,
	output reg		clk_32f,
	output reg		[7:0] data_in,
	output reg		valid_in,
	output reg 		reset_L,
	input wire data_out
	);

	// Bloque de procedimiento, no sintetizable, se recorre una única vez
	// Generalmente, los initial sólo se usan en los testbench o probadores
	// Se recomienda siempre sincronizar con el reloj y utilizar
	// asignaciones no bloqueantes en la generación de señales

	initial begin
		$dumpfile("P1_paralelo_serial.vcd"); // Nombre de archivo del "dump"
		$dumpvars; // Directiva para "dumpear" variables

			data_in = 'hFF;
			reset_L <= 0;
			valid_in <= 0;

			@(posedge clk_4f);
					reset_L <= 0;
					valid_in <= 0;

			@(posedge clk_4f);
					reset_L <= 1;
					data_in <= 'hFF;
					valid_in <= 1;

			@(posedge clk_4f);
        	data_in <= 'hFF;
        	valid_in <= 1;

      @(posedge clk_4f);
        	data_in <= 'hEE;
        	valid_in <= 1;

			@(posedge clk_4f);
						data_in <= 'hEE;
						valid_in <= 1;

			@(posedge clk_4f);
						data_in <= 'hEE;
						valid_in <= 1;

		$finish;

	end

	// Reloj
	initial	clk_4f	<= 1;
	always  #8		clk_4f 	<= ~clk_4f;

	// Reloj
	initial	clk_32f	<= 1;
	always  #1 	clk_32f <= ~clk_32f;

endmodule
