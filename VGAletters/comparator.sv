module comparator
	(
	  input logic [9:0] initialX, initialY, currentX, currentY, 
	  input logic [23:0] rgb_in,
	  output logic [23:0] RGB
	 );
	

			
	always @*
	 begin
		
		if(currentX<initialX||currentY<initialY||currentX>(initialX+10'd32)||currentY>(initialY+10'd32))
			RGB <= 24'hFFFFFF;
		else
			RGB <= rgb_in;
	 end
	 
endmodule 