// Módulo probador: generador de señales y monitor de datos
module Probador(
	output reg		valid_in,	sel, clk_4f, clk,
	output reg 		[31:0] data_in,
  input  	valid_out,
	input [7:0] data_out);
	// Bloque de procedimiento, no sintetizable, se recorre una única vez
	// Generalmente, los initial sólo se usan en los testbench o probadores
	// Se recomienda siempre sincronizar con el reloj y utilizar
	// asignaciones no bloqueantes en la generación de señales

	initial begin
		$dumpfile("conv_32b_to_8b.vcd");	// Nombre de archivo del "dump"
		$dumpvars;					// Directiva para "dumpear" variables
		// Mensaje que se imprime en consola una vez

			valid_in <= 0;
			data_in <= 'b0;

        	@(posedge clk);
			valid_in <= 1;
			data_in <= 32'hFFFFFFFF;

        	@(posedge clk);
			valid_in <= 1;
			data_in <= 32'hDDDDDDDD;

					@(posedge clk);
			valid_in <= 0;
			data_in <= 32'h00000003;
			#5;

					@(posedge clk);
			valid_in <= 1;
			data_in <= 32'h00000003;


					@(posedge clk);
			valid_in <= 1;
			data_in <= 32'h00000000;

					@(posedge clk);
			valid_in <= 1;
			data_in <= 32'hFFFFFFFF;

					@(posedge clk);
			valid_in <= 1;
			data_in <= 32'hDDDDDDDD;

					@(posedge clk);
			valid_in <= 0;
			data_in <= 32'h00000003;
			#5;

					@(posedge clk);
			valid_in <= 1;
			data_in <= 32'h00000003;


					@(posedge clk);
			valid_in <= 1;
			data_in <= 32'h00000000;
			$finish;
	end

	//Reloj clk_4f
	initial	clk_4f <= 0;			// Valor inicial al reloj, sino siempre será indeterminado
	always	#2 clk_4f <= ~clk_4f;		// Hace "toggle" cada 2*10ns

	initial	clk <= 0;			// Valor inicial al reloj, sino siempre será indeterminado
	always	#8 clk <= ~clk;		// Hace "toggle" cada 2*10ns

endmodule
