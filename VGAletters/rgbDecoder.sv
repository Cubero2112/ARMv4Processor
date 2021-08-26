module rgbDecoder(input logic [2:0] color, output logic [23:0] RGB);

    /*always
        case (color)
            3'b000: RGB <= 24'h000000; //Fondo
				3'b111: RGB <=24'hAAAAAA; //letra
            default: RGB <=24'h000000;
        endcase*/
		  
	always @*
	 begin
        case (color)
            3'b000: RGB <= 24'h000000; //Fondo
				3'b111: RGB <= 24'h111111; //letra
            default: RGB <=24'h000000;
        endcase
	 end

endmodule 