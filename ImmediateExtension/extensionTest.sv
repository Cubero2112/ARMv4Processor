/*
	immediate: Se toma de la isntrucciones a ejecutarse.
	intructionType: En base a esto se sabe que tipo de extension hacer al immediato pues estas cambian 
						 en funcion del tipo de intrucciones que este siendo procesada.
	
	
*/
module extensionTest();

	logic [23:0] immediateFromIntr;
	logic [1:0] intructionType;
	logic [31:0] immediate32Bits;
	
	extend extensionTo32Bits(immediateFromIntr, intructionType, immediate32Bits);
	
	initial begin
		immediateFromIntr = 24'h000010; 
		intructionType = 2'b10; //Branch instruction
		#10;
		//immediate32Bits = 00000040
		
		immediateFromIntr = 24'hfffff9; 
		intructionType = 2'b10; //Branch instruction
		#10;
		//immediate32Bits = ffffffE4
		
		immediateFromIntr = 24'hffffff; 
		intructionType = 2'b10; //Branch instruction
		#10;
		//immediate32Bits = fffffffC		
								
	
	end

endmodule