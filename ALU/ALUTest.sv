module ALUTest();
	
	logic [1:0] aluControl;
	logic [3:0] a, b;
	logic [3:0] salidaOperacion, salidaFlags;
		
	topALU #(4) testALU(aluControl, a, b, salidaOperacion, salidaFlags);

	initial begin
		aluControl = 2'b00; a = 4'b0111; b = 4'b0001; #5; // 7 + 1
		
		aluControl = 2'b00; a = 4'b0010; b = 4'b0101; #5; // 2 + 5
		
		aluControl = 2'b01; a = 4'b0111; b = 4'b0010; #5; // 7 - 2 
		
		aluControl = 2'b10; a = 4'b0101; b = 4'b0010; #5; // 5 ^ 2
		
		aluControl = 2'b11; a = 4'b0101; #5; // ~5
	
	end

endmodule
