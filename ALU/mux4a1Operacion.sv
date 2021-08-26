// Mux para determinar el resultado y flags a mostrar (suma, resta, xor o not)

module mux4a1Operacion   
					 #(parameter N = 4)
					 (
					 input logic [1:0] aluControl,
					 input logic [N-1:0] operacionAdder, operacionSubtract, operacionXor, operacionNot, 
					 input logic [3:0] flagsAdder, flagsSubtract, flagsXor, flagsNot,
					 output logic [N-1:0] salidaOperacion,
					 output logic [3:0]   salidaFlags
					 );
					 
	assign salidaOperacion = aluControl[1] ? (aluControl[0] ? operacionNot : operacionXor)
						                        : (aluControl[0] ? operacionSubtract : operacionAdder);			
					
	assign salidaFlags = aluControl[1] ? (aluControl[0] ? flagsNot : flagsXor)
						                        : (aluControl[0] ? flagsSubtract : flagsAdder);
			
endmodule
