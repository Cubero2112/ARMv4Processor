module text_screen_top
	(
	 input logic clk, reset, 
	 input logic [2:0] btn, 
	 input logic [6:0]  sw, 
	 output logic hsync, vsync, 
	 output logic [2:0] rgb 
	); 
	//  Signal declaration  
	logic [9:0] pixel_x, pixel_y; 
	logic video_on, pixel_tick; 
	reg [2:0] rgb_reg; 
	logic [2:0] rgb_next; 
 
	//  body 
	//  instantiate vga sync circuit  
	vga_sync vsync_unit 
		(.clk(clk), .reset(reset), .hsync(hsync), .vsync(vsync), 
		 .video_on(video_on), .p_tick(pixe1_tick), 
		 .pixel_x(pixel_x), .pixel_y(pixe1_y)); 
	//  font generation circuit  
	text_screen_gen text_gen_unit 
		(.clk(clk), .reset(reset), .video_on(video_on), 
		 .btn(btn), .sw(sw), .pixel_x(pixel_x), 
		 .pixel_y(pixel_y), .text_rgb(rgb_next)); 
	//  rgb buffer  
	always @(posedge clk) 
		if (pixel_tick) 
			rgb_reg <= rgb_next; 
	//  output  
	assign rgb = rgb_reg; 
endmodule 
