// Modulo para aplicar la operacion XOR

module xorGate #(parameter N = 4)
					 (
					 input logic [N-1:0] a, b, 
					 output logic [N-1:0] s,
					 output logic [3:0] FLAGS
					 );

	assign s = a ^ b;
	
	// Setear Flags
	assign FLAGS[0] = s[N-1]; // N
	
	assign FLAGS[1] = !s; // Z
	
	assign FLAGS[2] = 1'b0; // C
	
	assign FLAGS[3] = 1'b0; // O
	
endmodule
