module  vga_top ( 
	//input logic clk, reset,
	output logic hsync, vsync,video_on, syncb,//video_on= SYNC_BLANK
	output logic [23:0] rgb_vga 
	);  

	//Signal declaration  
	logic clk, reset;
	logic [2:0] rgb; 

	//  body 
	//  instantiate vga sync circuit  
	font_test_top controller(.clk(clk),
		.reset(reset), .hsync(hsync), .vsync(vsync), 
		.video_on(video_on), .rgb(rgb)); 
	
		
		
	rgb_decoder deco(.color(rgb), .RGB(rgb_vga));
	
	//assign syncb = hsync & vsync;
	assign syncb =1'b0;
	initial begin
		#10; reset= 1'b1;
		#10; clk =1'b0;reset= 1'b0;
		//#10; sw = 3'b000;
	end
	always 
		begin
			#10; clk=~clk;	
		end

		
		
endmodule   