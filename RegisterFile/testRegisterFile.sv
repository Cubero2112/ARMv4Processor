module testRegisterFile();
	
	logic clk, writeEnable;
	logic [3:0] pointToAddress1, pointToAddress2, pointToAddressToWrite;
	logic [31:0] writeData3, R15;
	logic [31:0] readData1, readData2;

	
	regfile registerFile(clk, writeEnable, 
								pointToAddress1, pointToAddress2, pointToAddressToWrite,
								writeData3, R15,
								readData1, readData2);

								
								
	//Creacion de un reloj
	always begin
		clk = 0; #5; clk=~clk; #5;
	end
	
	
	initial begin		
		pointToAddressToWrite = 4'd3; writeData3 = 32'd7; writeEnable = 1; #6; writeEnable = 0; #4;
		pointToAddressToWrite = 4'd6; writeData3 = 32'd9; writeEnable = 1; #6; writeEnable = 0; #4;
		
		pointToAddress1 = 4'd3;
		pointToAddress2 = 4'd6; #1;
		
		pointToAddressToWrite = 4'd5; writeData3 = 32'd8; writeEnable = 1; #9; writeEnable = 0; #1;
		pointToAddressToWrite = 4'd0; writeData3 = 32'd15; writeEnable = 1; #9; writeEnable = 0; #1;
				
		pointToAddress1 = 4'd5;
		pointToAddress2 = 4'd0; #1;		
						
		R15 = 32'd16; #1;
		
		pointToAddress1 = 4'd15; #1;
		
	
	
	end
								
								
endmodule