module rgb_decoder(input logic [2:0] color, output logic [23:0] RGB);

    always_comb
        case (color)
            3'b000: RGB = 24'h000000; //Fondo
				3'b111: RGB =24'hAAAAAA; //letra
            
        endcase

endmodule 