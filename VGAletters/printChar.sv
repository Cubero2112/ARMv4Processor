module printChar
	(
	  input logic clk, 
	  input logic [9:0] currentX, currentY,
	  output logic [23:0] RGB
	 );
	
	logic [7:0] char;
	logic [9:0] initialX, initialY; //Pixel inicial para dibujar 
	logic[10:0] address; //posición de memoria -> 0 - 255 -> 2^8
	logic [31:0] data; //datos leídos desde la memoria 
	 
	 
	dataMemoryVGA dataMem (address,data);
    //------------------------------print CHAR --------------------------------------------//
	sprite test (clk,char, initialX, initialY,currentX, currentY,  RGB);

	always @*
		begin 
		/*
			if(currentX>=10'd10 && currentY>=10'd0 && currentX<10'd42 && currentY<10'd32)
				begin
					address<=11'h000;
					initialX<=10'd150;
					initialY<=10'd60;
					char<=data[7:0];
				end	
			*/
			if(currentX>=10'd150 && currentY>=10'd60 && currentX<10'd182 && currentY<10'd92)
				begin
					address<=11'h000;
					initialX<=10'd150;
					initialY<=10'd60;
					char<=[7:0];
				end	
			if(currentX>=10'd182 && currentY>=10'd60 && currentX<10'd214 && currentY<10'd92)
				begin
					address<=11'h004;
					initialX<=10'd182;
					initialY<=10'd60;
					char<=data[7:0];
				end	
			if(currentX>=10'd214 && currentY>=10'd60 && currentX<10'd246 && currentY<10'd92)
				begin
					address<=11'h008;
					initialX<=10'd214;
					initialY<=10'd60;
					char<=data[7:0];
				end	
			if(currentX>=10'd246 && currentY>=10'd60 && currentX<10'd278 && currentY<10'd92)
				begin
					address<=11'h00C;
					initialX<=10'd246;
					initialY<=10'd60;
					char<=data[7:0];
				end	
		end

endmodule 