module  top( 
	input logic clk, reset,
	output logic H_S
	
	);  
	//Signal declaration  
	logic [2:0] rgb_s; 
	//  body 
	//  instantiate vga sync circuit  
	font_test_top controller(.clk(clk),
		.reset(reset), .hsync(H_SYNC), .vsync(V_SYNC), 
		.video_on(BLANK_N), .rgb(rgb_s)); 
		
	rgb_decoder deco(.color(rgb_s), .RGB(RFB));
	assign SYNC_N = H_SYNC & V_SYNC;
	//always
	
endmodule   