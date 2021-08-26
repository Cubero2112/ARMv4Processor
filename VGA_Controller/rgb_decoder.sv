
//RGB Decoder
//This project only show two colors on screen: Background Color and letter Color
module rgb_decoder(input logic [2:0] color, output logic [23:0] RGB);

    always_comb
        case (color)
            3'b000: RGB = 24'h000000; //Background
				3'b111: RGB = 24'hFFFFFF; //Font
            default: RGB=24'hAAAAAA;
        endcase

endmodule 