module printChar
	(
	  input logic clk, 
	  input logic [9:0] posX, posY,
	  input logic [12:0] counterX, counterY, 
	  input logic [7:0] char,
	  output logic [23:0] RGB
	 );
	
	 logic [23:0] rgb65;//, rgb66;
    sprite65  ascii65 (clk, posX, posY,counterX, counterY,  rgb65);
	 //sprite65 ascii66 (clk, counterX, counterY, posX, posY, rgb66);
	 /*always
        case (char)
            8'd65: RGB <= 24'h0000; //Letra a HEX(41)= DEC (65)
				//8'h42: RGB <= rgb66; //Letra b
				default: RGB <= 24'h0000;
            
        endcase*/
			
	always @*
	 begin
	  case (char) 
		// gfedcba
		8'd65 :   begin RGB <= rgb65; end 
		default : begin RGB <= 24'h0000; end 
	  endcase
	 end
	 
endmodule 