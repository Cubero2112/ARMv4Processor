module vga_test_top();
	logic clk, rst; 
	logic [2:0] sw; 
	logic hsync, vsync; 
	logic [2:0]  rgb;
	logic [23:0] rgb_vga;
	
	vga_test DUT(.clk(clk), .reset(rst), 
					 .sw(sw), .hsync(hsync),
					 .vsync(vsync), .rgb(rgb));
					 
					 
	rgb_decoder deco(.color(rgb), .RGB(rgb_vga));
					 
	initial begin
		#10; clk =1'b0;rst= 1'b1;
		#10; sw = 3'b000;
	end
	always begin
			#10; clk=~clk;
		end

endmodule 