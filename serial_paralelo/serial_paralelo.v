   module serial_paralelo(
			 input 		  data_input,
          input 		  valid_out,
          input 		  clk_32f,
			 input 		  clk_4f,
          output reg 	  active_output,
			 output reg [7:0] data_output,
			 output reg [2:0] BC_contador
			 );
    reg [0:7]				  bus_0;
    reg [2:0]  			  contador;
     
always@(valid_out)begin
   BC_contador <= 0;
   end

always @(posedge clk_32f) begin
      if (contador == 0)begin
   bus_0[0] <= data_input;
      end
   else if (contador == 1) begin
   bus_0[1] <= data_input;
   end
    else if (contador == 2) begin
   bus_0[2] <= data_input;
    end
    else if (contador == 3) begin
   bus_0[3] <= data_input;
    end
    else if (contador == 4) begin
   bus_0[4] <= data_input; //primeros 8bits
    end
    else if (contador == 5) begin
   bus_0[5] <= data_input;
    end
    else if (contador == 6) begin
   bus_0[6] <= data_input;
    end
    else if (contador == 7) begin
   bus_0[7] <= data_input;
    end else begin
       BC_contador <= 0;   
       
    end
   contador = contador +1;
end
 always @(posedge clk_4f) begin
    contador <=0;
    
    data_output <= bus_0;

    if(data_output == 188)begin
       if(BC_contador == 4)begin
	  BC_contador <= 4;
	  
       end else begin
	  
       BC_contador = BC_contador +1;
       end 
    end

    if(BC_contador == 4)begin
       active_output <= 1;
    end else begin
       active_output <= 0;
       end
       
     end // always @ (posedge clk_f)

endmodule // serie_paralelo
