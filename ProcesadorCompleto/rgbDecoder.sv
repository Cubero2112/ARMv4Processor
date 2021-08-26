module rgbDecoder(input logic [2:0] color, output logic [23:0] RGB);

		  
	always @*
	 begin
        case (color)
            3'b000: RGB <= 24'hFFFFFF; //Fondo
				3'b111: RGB <= 24'h000000; //Letra
            default: RGB <=24'hFFFFFF;
        endcase
	 end

endmodule 