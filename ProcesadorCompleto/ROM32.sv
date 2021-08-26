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
			11'h00: data = 32'b0000_0000_0000_0000_0000_0000_0000_0010; // Operacion elegida (Xor=1, Not=2, Suma=3)
			11'h04: data = 32'b0000_0000_0000_0000_0000_0000_0000_0111; // Operando dos para la operacion XOR, primeros 3 switches -> 000 a 111 (0 a 7)
			11'h08: data = 32'b0000_0000_0000_0000_0000_0000_0010_0110; // Condicion parada (&)
			
			11'h0c: data = 32'b1111_1111_1111_1111_1111_1111_01011110;
			11'h10: data = 32'b1111_1111_1111_1111_1111_1111_10101000;
			11'h14: data = 32'b1111_1111_1111_1111_1111_1111_10011010;
			11'h18: data = 32'b1111_1111_1111_1111_1111_1111_10010011;
			11'h1c: data = 32'b1111_1111_1111_1111_1111_1111_10011100;
			11'h20: data = 32'b1111_1111_1111_1111_1111_1111_10010000;
			11'h24: data = 32'b1111_1111_1111_1111_1111_1111_10010010;
			11'h28: data = 32'b1111_1111_1111_1111_1111_1111_10011010;
			11'h2c: data = 32'b1111_1111_1111_1111_1111_1111_11011111;
			11'h30: data = 32'b1111_1111_1111_1111_1111_1111_10001011;
			11'h34: data = 32'b1111_1111_1111_1111_1111_1111_10010000;
			11'h38: data = 32'b1111_1111_1111_1111_1111_1111_11011111;
			11'h3c: data = 32'b1111_1111_1111_1111_1111_1111_10001011;
			11'h40: data = 32'b1111_1111_1111_1111_1111_1111_10010111;
			11'h44: data = 32'b1111_1111_1111_1111_1111_1111_10011010;
			11'h48: data = 32'b1111_1111_1111_1111_1111_1111_11011111;
			11'h4c: data = 32'b1111_1111_1111_1111_1111_1111_10110101;
			11'h50: data = 32'b1111_1111_1111_1111_1111_1111_10001010;
			11'h54: data = 32'b1111_1111_1111_1111_1111_1111_10010001;
			11'h58: data = 32'b1111_1111_1111_1111_1111_1111_10011000;
			11'h5c: data = 32'b1111_1111_1111_1111_1111_1111_10010011;
			11'h60: data = 32'b1111_1111_1111_1111_1111_1111_10011010;
			11'h64: data = 32'b1111_1111_1111_1111_1111_1111_11011110;
			11'h68: data = 32'b1111_1111_1111_1111_1111_1111_11011001;
			11'h6c: data = 32'b0000_0000_0000_0000_0000_0000_01110101;
			11'h70: data = 32'b0000_0000_0000_0000_0000_0000_01110110;
			11'h74: data = 32'b0000_0000_0000_0000_0000_0000_01110111;
			11'h78: data = 32'b0000_0000_0000_0000_0000_0000_01111000;
			11'h7c: data = 32'b0000_0000_0000_0000_0000_0000_01111001;
			11'h80: data = 32'b0000_0000_0000_0000_0000_0000_01111010;
			11'h84: data = 32'b0000_0000_0000_0000_0000_0000_01111011;
			11'h88: data = 32'b0000_0000_0000_0000_0000_0000_01111100;
			11'h8c: data = 32'b0000_0000_0000_0000_0000_0000_01111101;
			11'h90: data = 32'b0000_0000_0000_0000_0000_0000_01111110;
			11'h94: data = 32'b0000_0000_0000_0000_0000_0000_01111111;
			11'h98: data = 32'b0000_0000_0000_0000_0000_0000_10000000;
			11'h9c: data = 32'b0000_0000_0000_0000_0000_0000_00101001;
			11'ha0: data = 32'b0000_0000_0000_0000_0000_0000_01000010;
			11'ha4: data = 32'b0000_0000_0000_0000_0000_0000_00101000;
			11'ha8: data = 32'b0000_0000_0000_0000_0000_0000_01001100;
			11'hac: data = 32'b0000_0000_0000_0000_0000_0000_01001101;
			11'hb0: data = 32'b0000_0000_0000_0000_0000_0000_01001110;
			11'hb4: data = 32'b0000_0000_0000_0000_0000_0000_01001111;
			11'hb8: data = 32'b0000_0000_0000_0000_0000_0000_01010000;
			11'hbc: data = 32'b0000_0000_0000_0000_0000_0000_01010001;
			11'hc0: data = 32'b0000_0000_0000_0000_0000_0000_01010010;
			11'hc4: data = 32'b0000_0000_0000_0000_0000_0000_01010011;
			11'hc8: data = 32'b0000_0000_0000_0000_0000_0000_01010100;
			11'hcc: data = 32'b0000_0000_0000_0000_0000_0000_01010101;
			11'hd0: data = 32'b0000_0000_0000_0000_0000_0000_01010110;
			11'hd4: data = 32'b0000_0000_0000_0000_0000_0000_01010111;
			11'hd8: data = 32'b0000_0000_0000_0000_0000_0000_01011000;
			11'hdc: data = 32'b0000_0000_0000_0000_0000_0000_01011001;
			11'he0: data = 32'b0000_0000_0000_0000_0000_0000_01011010;
			11'he4: data = 32'b0000_0000_0000_0000_0000_0000_01011011;
			11'he8: data = 32'b0000_0000_0000_0000_0000_0000_01011100;
			11'hec: data = 32'b0000_0000_0000_0000_0000_0000_00101000;

			11'hf0: data = 32'b0000_0000_0000_0000_0000_0000_00110110;
			11'hf4: data = 32'b0000_0000_0000_0000_0000_0000_00110111;
			11'hf8: data = 32'b0000_0000_0000_0000_0000_0000_00111000;
			11'hfc: data = 32'b0000_0000_0000_0000_0000_0000_00101000;		
			
			default: data = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
			
			
		endcase 
	
		
	
endmodule