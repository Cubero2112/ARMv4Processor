module  font_test_top ( 
	input logic clk, reset, 
	output logic hsync, vsync,video_on,//video_on= SYNC_BLANK
	output logic [2:0] rgb 
	);  

	//Signal declaration  
	logic [9:0] pixel_x,pixel_y; 
	logic pixel_tick; 
	reg [2:0] rgb_reg; 
	logic [2:0] rgb_next; 
	
	//  body 
	//  instantiate vga sync circuit  
	vga_sync vsync_unit(.clk(clk),
		.reset(reset), .hsync(hsync), .vsync(vsync), 
		.video_on(video_on), .p_tick(pixe1_tick), 
		.pixel_x(pixel_x), .pixel_y(pixel_y)); 
	
	//  font generation circuit
	font_test_gen  font_gen_unit(.clk(clk),  
		.video_on(video_on), .pixel_x(pixel_x), 
		.pixel_y(pixel_y), .rgb_text(rgb_next)); 

	//  rgb buffer
	always @(posedge clk) 
		if (pixel_tick) 
			rgb_reg <= rgb_next; 
	//  output  
	assign rgb = rgb_reg;  
	
endmodule   