module vga_test
	(
	input logic clk, reset, 
	input logic [2:0] sw, 
	output logic hsync, vsync, 
	output logic [2:0]  rgb 
	);
	
	// signal declaration  
	reg [2:0] rgb_reg; 
	logic video_on; 
	//  instantiate vga sync circuit  
	vga_sync vsync_unit 
		(.clk(clk), .reset(reset), .hsync(hsync), .vsync(vsync), 
		 .video_on(video_on), .p_tick(), .pixel_x(), .pixel_y())   ; 
	//  rgb  buffer  
	always @(posedge clk, posedge reset) 
		if (reset) 
			rgb_reg <= 0;  
		else  
			rgb_reg <= sw; 
	//  output 
	assign rgb = (video_on) ? rgb_reg : 3'b0;

endmodule 