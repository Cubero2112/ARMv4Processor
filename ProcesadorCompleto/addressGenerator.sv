module addressGenerator(input [9:0] initialX, initialY, currentX, currentY, output logic [9:0] address);


    logic [9:0] idx, idy;
	
    assign idx = currentX - initialX;
	
    assign idy = currentY - initialY;
	
    assign address = {idy[4:0], idx[4:0]}; 
endmodule 