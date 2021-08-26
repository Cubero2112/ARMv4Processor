// Modulo Top ALU

module topALU   #(parameter N = 4)
					 (
					 input logic [1:0] aluControl,
					 input logic [N-1:0] a, b, 
					 output logic [N-1:0] salidaOperacion,
					 output logic [3:0] salidaFlags
					 );
					 
					 
	logic [N-1:0] operacionAdder, operacionSubtract, operacionXor, operacionNot;
	logic [3:0] flagsAdder, flagsSubtract, flagsXor, flagsNot;
	
	adder    #(N) adderALU(a, b, operacionAdder, flagsAdder);
	subtract #(N) subtractALU(a, b, operacionSubtract, flagsSubtract);
	xorGate  #(N) xorAlu(a, b, operacionXor, flagsXor);
	inv	   #(N) invAlu(a, operacionNot, flagsNot);
	
	mux4a1Operacion  #(N) mux4(aluControl,  operacionAdder, operacionSubtract, operacionXor, operacionNot, 
										flagsAdder, flagsSubtract, flagsXor, flagsNot, salidaOperacion, salidaFlags);
	
endmodule
