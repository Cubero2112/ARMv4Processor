module topController 
			(
			 input logic clk, botonRST,  
			 input logic [12:0] counterX, counterY,
          output logic [23:0] RGB
			);
			
	logic [3:0] contador;
	
	logic [1:0] contSelect, contadorWrite;

	logic [23:0] rgb0, rgb1, rgb2, rgb3, rgb4, rgb5, rgb6, rgb7, rgb8;
			
	
	


			 
	//------------------------------print a --------------------------------------------//
	printChar a65 (clk, 10'd106, 10'd80, counterX, counterY, 8'h41, RGB);
	
																																	 
endmodule
