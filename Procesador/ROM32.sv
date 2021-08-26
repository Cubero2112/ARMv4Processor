/* Memoria ROM 32 Bits
INPUTS:
address: Posición de memoria van de 4 en 4
OUTPUTS
data: Valor almacenado de 32 bits
*/
module ROM32(
	input logic[10:0] address, 
	output logic[31:0] data
	);
	always @*
		case(address)
			11'h000: data = 32'b0000_0000_0000_0000_0000_0000_0000_0010; // Operacion elegida (Xor=1, Not=2, Suma=3)
			11'h004: data = 32'b0000_0000_0000_0000_0000_0000_0000_0011; // Operando dos para la operacion XOR (1, 2, o 3)
			11'h008: data = 32'b0000_0000_0000_0000_0000_0000_0010_0110; // Condicion parada (&)
			11'h00c: data = 32'b1111_1111_1111_1111_1111_1111_1011_0111; // ASCII de H -> 01001000 (72); cifrada a not ->  10110111
			
			11'h010: data = 32'b1111_1111_1111_1111_1111_1111_1011_0000; // ASCII de O -> 01001111 (79); cifrada a not ->  10110000
			11'h014: data = 32'b1111_1111_1111_1111_1111_1111_1011_0011; // ASCII de L -> 01001100 (76); cifrada a not ->  10110011
			11'h018: data = 32'b1111_1111_1111_1111_1111_1111_1011_1110; // ASCII de A -> 01000001 (65); cifrada a not ->  10111110
			
			11'h01c: data = 32'b1111_1111_1111_1111_1111_1111_1101_1001; // ASCII de & -> 00100110 (38); cifrada a not ->  11011001
			11'h020: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h024: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			
			11'h028: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h02c: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			11'h030: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h034: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			
			11'h038: data = 32'b0000_0000_0000_0000_0000_0000_1111_1111; //
			11'h03c: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			11'h040: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h044: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			
			11'h048: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h04c: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			11'h050: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			
			11'h054: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h058: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h05c: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			11'h060: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			
			11'h064: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h068: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h06c: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			11'h070: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			
			11'h074: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h078: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h07c: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			
			11'h080: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h084: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h088: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h08c: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			
			11'h090: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h094: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h098: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h09c: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			
			11'h0a0: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0a4: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0a8: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0ac: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			
			11'h0b0: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0b4: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0b8: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0bc: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			
			11'h0c0: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0c4: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0c8: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0cc: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //		
			
			11'h0d0: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0d4: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0d8: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0dc: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			
			11'h0e0: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0e4: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0e8: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0ec: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			
			11'h0f0: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0f4: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0f8: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //
			11'h0fc: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000; //			
			
			default: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
			
			
		endcase 
	
		
	
endmodule