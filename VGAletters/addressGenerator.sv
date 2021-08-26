module addressGenerator(
							input [9:0] initial_x, initial_y, 
							input [12:0] posx, posy,
							output x63, y63, output logic [9:0] address);


    logic [9:0] idx, idy;
	
    assign idx = initial_x - posx;
	
    assign idy = initial_y - posy;
	
    assign address = {idy[4:0], idx[4:0]}; 
	
    assign x63 = (idx > 9'd31);
	
    assign y63 = (idy > 9'd31);

endmodule 