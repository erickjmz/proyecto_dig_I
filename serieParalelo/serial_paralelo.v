   module serial_paralelo(
			 input 		  data_in,
			 output reg [7:0] data_out,
			 input 		  clk_32f,
			 input 		  clk_4f,
			 output reg 	  active,
			 input 		  valid_out,
			 output reg [2:0] BC_counter

			 );
    reg [0:7]				  bus0;
   
  reg [2:0]  			  counter;

   
/*always@(posedge valid_out)begin
   BC_counter <= 0;
   counter <=0;
   
   end*/
     
always @(posedge clk_32f) begin
      if (counter == 0)begin
   bus0[0] <= data_in;
      end
   else if (counter == 1) begin
   bus0[1] <= data_in;
   end
    else if (counter == 2) begin
   bus0[2] <= data_in;
    end
    else if (counter == 3) begin
   bus0[3] <= data_in;
    end
    else if (counter == 4) begin
   bus0[4] <= data_in; //primeros 8bits
    end
    else if (counter == 5) begin
   bus0[5] <= data_in;
    end
    else if (counter == 6) begin
   bus0[6] <= data_in;
    end
    else if (counter == 7) begin
   bus0[7] <= data_in;
    end else begin
       BC_counter <= 0;   
       
    end
   counter = counter +1;
end
 always @(posedge clk_4f) begin
    counter <=0;
    
    data_out <= bus0;

    if(data_out == 188)begin
       if(BC_counter == 4)begin
	  BC_counter <= 4;
	  
       end else begin
	  
       BC_counter = BC_counter +1;
       end 
    end

    if(BC_counter == 4)begin
       active <= 1;
    end else begin
       active <= 0;
       end
       
     end // always @ (posedge clk_f)

endmodule // paralelo-serie
