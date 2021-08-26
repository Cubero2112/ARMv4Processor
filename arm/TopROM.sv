module TopROM (input clk, input rst);
	logic [7:0] address;
	logic [7:0] q;
	ROM32 memory (address,clk,q);
	counter count(clk,rst, 1'b1,address);


endmodule 