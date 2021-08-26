// Modulo para sumar

module adder #(parameter N = 4)
				  (
				  input logic [N-1:0] a, b,
				  output logic [N-1:0] s, 
				  output logic [3:0] FLAGS
				  );
					
	logic cout;
	
	assign {cout, s} = a + b;
	
	// Setear Flags
	assign FLAGS[0] = s[N-1]; // N
	
	assign FLAGS[1] = !s; // Z
	
	assign FLAGS[2] = cout; // C
	
	assign FLAGS[3] = (a[N-1] & b[N-1] & !s[N-1]) | (!a[N-1] & !b[N-1] & s[N-1]); // O
	
	
endmodule
