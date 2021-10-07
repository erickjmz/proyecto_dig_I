// Módulo probador: generador de señales y monitor de datos
module Probador(
	output reg      clk_2f,
	output reg		valid_in,	
	output reg 		[31:0] data_in,
	output reg 		selector,
    input  			[31:0] lane0,
	input  			[31:0] lane1,
	input  			valid_0,
	input  			valid_1);

	// Bloque de procedimiento, no sintetizable, se recorre una única vez
	// Generalmente, los initial sólo se usan en los testbench o probadores
	// Se recomienda siempre sincronizar con el reloj y utilizar
	// asignaciones no bloqueantes en la generación de señales

	initial begin
		$dumpfile("Byte_Striping.vcd");	// Nombre de archivo del "dump"
		$dumpvars;					// Directiva para "dumpear" variables
		// Mensaje que se imprime en consola una vez
		
			valid_in <= 1;
			data_in <= 'b0;
			selector <= 1;

        	@(posedge clk_2f);
			valid_in <= 1;
			data_in <= 32'hFFFFFFFF;
			selector <= 0;

        	@(posedge clk_2f);
			valid_in <= 1;
			data_in <= 32'hEEEEEEEE;
			selector <= 1;

        	@(posedge clk_2f);
			valid_in <= 1;
			data_in <= 32'hDDDDDDDD;
			selector <= 0;

        	@(posedge clk_2f);
			valid_in <= 1;
			data_in <= 32'hCCCCCCCC;
			selector <= 1;

			@(posedge clk_2f);
			valid_in <= 0;
			data_in <= 32'hBBBBBBBB;
			selector <= 0;

        	@(posedge clk_2f);
			valid_in <= 0;
			data_in <= 32'hAAAAAAAA;
			selector <= 1;

			@(posedge clk_2f);
			valid_in <= 1;
			data_in <= 32'h00000003;
			selector <= 0;

			@(posedge clk_2f);
			valid_in <= 1;
			data_in <= 32'h00000004;
			selector <= 1;

			@(posedge clk_2f);
			valid_in <= 0;
			data_in <= 32'h00000005;
			selector <= 0;

			@(posedge clk_2f);
			valid_in <= 0;
			data_in <= 32'h00000006;
			selector <= 1;

			@(posedge clk_2f);
			valid_in <= 1;
			data_in <= 32'hAAAAAAAA;
			selector <= 0;

			@(posedge clk_2f);
			valid_in <= 1;
			data_in <= 32'h99999999;
			selector <= 1;

			@(posedge clk_2f);
			valid_in <= 0;
			data_in <= 32'hBBBBBBBB;
			selector <= 0;

			@(posedge clk_2f);
			valid_in <= 0;
			data_in <= 32'h88888888;
			selector <= 1;

			@(posedge clk_2f);
			valid_in <= 1;
			data_in <= 32'h00000007;
			selector <= 0;

			@(posedge clk_2f);
			valid_in <= 1;
			data_in <= 32'h00000008;
			selector <= 1;

			@(posedge clk_2f);
			valid_in <= 0;
			data_in <= 32'h00000009;
			selector <= 0;

			@(posedge clk_2f);
			valid_in <= 0;
			data_in <= 32'h00000001;
			selector <= 1;

			@(posedge clk_2f);	
			valid_in <= 1;
			data_in <= 'b0;
			selector <= 'b0;
			$finish;			
	end

	//Reloj clk_2f
	initial	clk_2f <= 0;			// Valor inicial al reloj, sino siempre será indeterminado
	always	#2 clk_2f <= ~clk_2f;		// Hace "toggle" cada 2*10ns


endmodule
