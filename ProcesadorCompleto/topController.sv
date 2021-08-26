module topController 
			(
			 input logic clk, botonRST,  
			 input logic [9:0] counterX, counterY,
			 input [31:0] rdataForVga,
			 output logic[7:0] addressForVga,
          output logic [23:0] RGB
			);
			
	//int posX=10'd10;
	//int posX=10'd0;
	
	
	//------------------------------print CHAR --------------------------------------------//
	printChar test (clk,counterX, counterY, rdataForVga, addressForVga, RGB);
	
	/*
	
	logic [10:0] initialX,initialY;
	logic [7:0] char;
		 
	//------------------------------print CHAR --------------------------------------------//
	sprite test (clk,char, initialX, initialY,counterX, counterY,  RGB);
	
	
	always @*
		begin
			//if(counterX>=10'd60 && counterY>=initialY && counterX<=initialX+10'b32 && counterY<=initialY+10'b32)
			
			
			//------------------------------print H --------------------------------------------//
			if(counterX>=10'd150 && counterY>=10'd60 && counterX<10'd92 && counterY<=10'd92)
				begin
					initialX<=10'd60;
					initialY<=10'd60;
					char<=8'd72;
				end
				
			//------------------------------print O --------------------------------------------//
			if(counterX>=10'd92 && counterY>=10'd60 && counterX<10'd124 && counterY<=10'd92)
				begin
					initialX<=10'd92;
					initialY<=10'd60;
					char<=8'd79;
				end
				
			//------------------------------print L --------------------------------------------//
			if(counterX>=10'd124 && counterY>=10'd60 && counterX<10'd156 && counterY<=10'd92)
				begin
					initialX<=10'd124;
					initialY<=10'd60;
					char<=8'd76;
				end
				
			//------------------------------print A --------------------------------------------//
			if(counterX>=10'd156 && counterY>=10'd60 && counterX<10'd188 && counterY<=10'd92)
				begin
					initialX<=10'd156;
					initialY<=10'd60;
					char<=8'd65;
				end
				
		end

	*/
															
endmodule
