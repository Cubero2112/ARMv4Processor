module tb_dataMemory();
	
	logic clk,we;
	logic[31:0] address;
	logic [31:0] writeData; 
	logic [31:0] readData;
	
	
	dataMemory dMem(clk, we, address[7:0], writeData, readData);	
									
									
	//Creacion de un reloj
	always begin
		clk = 0; #5; clk=~clk; #5;
	end
	
	
	always begin
		//Escrituras de memoria
		we = 1; address = 32'h00000000; writeData = 32'hE3A01A02; #7;
		we = 1; address = 32'h00000008; writeData = 32'h1AFFFFF9; #9;
		we=0; #2;		
		
		//Lectura de memoria
		address = 32'h00000000; #7;
		address = 32'h00000008; #7;
		
	end
	
	

endmodule