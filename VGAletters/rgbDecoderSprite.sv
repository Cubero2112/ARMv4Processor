module rgbDecoderSprite
	(
	 input logic [2:0] color,
	 input logic[9:0] posx, posy, counterX, counterY, 
	 output logic [23:0] RGB);
	  
	logic ys, xs,yi,xi;
	
	//assign ys = (counterY>(posy+10'd32));
	//assign xs = (counterX>(posx+10'd32));
	assign xi = (posx<counterX);
	assign yi = (posy<counterY);
	always_comb
		begin
			if(xi)
				RGB <= 24'hFFFFFF;
			if(yi)
				RGB <= 24'hFFFFFF;
			if(xs)
				RGB <= 24'hFFFFFF;
			
			if(ys)
				RGB <= 24'hFFFFFF;
			else		
				 begin
					  case (color)
							3'b000: RGB <= 24'hFFFFFF; //Fondo
							3'b111: RGB <= 24'h000000; //letra
							default: RGB <=24'hFFFFFF;
					  endcase
				 end
		end

endmodule 