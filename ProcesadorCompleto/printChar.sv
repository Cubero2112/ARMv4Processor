module printChar
	(
	  input logic clk, 
	  input logic [9:0] currentX, currentY,
	  input [31:0] data,  // rdataForVga
	  output logic[7:0] address, // addressForVga
	  output logic [23:0] RGB
	 );
	
	logic [7:0] char;
	logic [9:0] initialX, initialY; //Pixel inicial para dibujar 
	//logic[10:0] address; //posición de memoria -> 0 - 255 -> 2^8
	//logic [31:0] data; //datos leídos desde la memoria 
	 
	 
	//dataMemoryVGA dataMem (address,data);
    //------------------------------print CHAR --------------------------------------------//
	sprite test (clk,char, initialX, initialY,currentX, currentY,  RGB);

	always @*
		begin 
		
			if(currentX>=10'd32 && currentY>=10'd32 && currentX<10'd64 && currentY<10'd64) 
				begin
					address <= 11'h00C;
					initialX<=10'd32;
					initialY<=10'd32;
					char <= data[7:0];
				end	
			if(currentX>=10'd64 && currentY>=10'd32 && currentX<10'd96 && currentY<10'd64)
				begin
					address <= 11'h010;
					initialX<=10'd64;
					initialY<=10'd32;
					char <= data[7:0];
				end	
			if(currentX>=10'd96 && currentY>=10'd32 && currentX<10'd128 && currentY<10'd64)
				begin
					address <= 11'h014;
					initialX<=10'd96;
					initialY<=10'd32;
					char <= data[7:0];
				end	
			if(currentX>=10'd128 && currentY>=10'd32 && currentX<10'd160 && currentY<10'd64)
				begin
					address <= 11'h018;
					initialX<=10'd128;
					initialY<=10'd32;
					char <= data[7:0];
				end	
			if(currentX>=10'd160 && currentY>=10'd32 && currentX<10'd192 && currentY<10'd64)
				begin
					address <= 11'h01C;
					initialX<=10'd160;
					initialY<=10'd32;
					char <= data[7:0];
				end	
			if(currentX>=10'd192 && currentY>=10'd32 && currentX<10'd224 && currentY<10'd64)
				begin
					address <= 11'h020;  
					initialX<=10'd192;
					initialY<=10'd32; 
					char <= data[7:0];
				end	
			if(currentX>=10'd224 && currentY>=10'd32 && currentX<10'd256 && currentY<10'd64)
				begin
					address <= 11'h024;
					initialX<=10'd224;
					initialY<=10'd32;
					char <= data[7:0];
				end
			if(currentX>=10'd256 && currentY>=10'd32 && currentX<10'd288 && currentY<10'd64)
				begin
					address <= 11'h028; 
					initialX<=10'd256; 
					initialY<=10'd32; 
					char <= data[7:0];
				end
			if(currentX>=10'd288 && currentY>=10'd32 && currentX<10'd320 && currentY<10'd64)
				begin
					address <= 11'h02C;
					initialX<=10'd288;
					initialY<=10'd32; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd320 && currentY>=10'd32 && currentX<10'd352 && currentY<10'd64) 
				begin
					address <= 11'h030;  
					initialX<=10'd320; 
					initialY<=10'd32; 
					char <= data[7:0];
				end	
			if(currentX>=10'd352 && currentY>=10'd32 && currentX<10'd384 && currentY<10'd64) 
				begin
					address <= 11'h034;  
					initialX<=10'd352; 
					initialY<=10'd32; 
					char <= data[7:0]; 
				end
			if(currentX>=10'd384 && currentY>=10'd32 && currentX<10'd416 && currentY<10'd64) 
				begin
					address <= 11'h038; 
					initialX<=10'd384; 
					initialY<=10'd32; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd416 && currentY>=10'd32 && currentX<10'd448 && currentY<10'd64) 
				begin
					address <= 11'h03C;
					initialX<=10'd416;
					initialY<=10'd32; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd448 && currentY>=10'd32 && currentX<10'd480 && currentY<10'd64)
				begin
					address <= 11'h040;
					initialX<=10'd448; 
					initialY<=10'd32; 
					char <= data[7:0];
				end
			if(currentX>=10'd480 && currentY>=10'd32 && currentX<10'd512 && currentY<10'd64)
				begin
					address <= 11'h044;
					initialX<=10'd480; 
					initialY<=10'd32; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd512 && currentY>=10'd32 && currentX<10'd544 && currentY<10'd64)
				begin
					address <= 11'h048; 
					initialX<=10'd512; 
					initialY<=10'd32; 
					char <= data[7:0]; 
				end
			if(currentX>=10'd544 && currentY>=10'd32 && currentX<10'd576 && currentY<10'd64)
				begin 
					address <= 11'h04C;  
					initialX<=10'd544; 
					initialY<=10'd32; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd576 && currentY>=10'd32 && currentX<10'd608 && currentY<10'd64) // 18 caracteres
				begin
					address <= 11'h050;  
					initialX<=10'd576; 
					initialY<=10'd32; 
					char <= data[7:0]; 
				end
			
			// Fila 2
			if(currentX>=10'd32 && currentY>=10'd64 && currentX<10'd64 && currentY<10'd96) 
				begin 
					address <= 11'h054; 
					initialX<=10'd32; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd64 && currentY>=10'd64 && currentX<10'd96 && currentY<10'd96) 
				begin 
					address <= 11'h058; 
					initialX<=10'd64; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd96 && currentY>=10'd64 && currentX<10'd128 && currentY<10'd96) 
				begin 
					address <= 11'h05C; 
					initialX<=10'd96; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd128 && currentY>=10'd64 && currentX<10'd160 && currentY<10'd96) 
				begin 
					address <= 11'h060; 
					initialX<=10'd128; 
					initialY<=10'd64; 
					char <= data[7:0];
				end	
			if(currentX>=10'd160 && currentY>=10'd64 && currentX<10'd192 && currentY<10'd96)
				begin 
					address <= 11'h064; 
					initialX<=10'd160; 
					initialY<=10'd64;
					char <= data[7:0]; 
				end	
			if(currentX>=10'd192 && currentY>=10'd64 && currentX<10'd224 && currentY<10'd96) 
				begin 
					address <= 11'h068; 
					initialX<=10'd192; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd224 && currentY>=10'd64 && currentX<10'd256 && currentY<10'd96)
				begin 
					address <= 11'h06C; 
					initialX<=10'd224; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd256 && currentY>=10'd64 && currentX<10'd288 && currentY<10'd96) 
				begin 
					address <= 11'h070; 
					initialX<=10'd256; 
					initialY<=10'd64;
					char <= data[7:0]; 
				end
			if(currentX>=10'd288 && currentY>=10'd64 && currentX<10'd320 && currentY<10'd96) 
				begin
					address <= 11'h074;
					initialX<=10'd288; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd320 && currentY>=10'd64 && currentX<10'd352 && currentY<10'd96) 
				begin
					address <= 11'h078; 
					initialX<=10'd320;
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd352 && currentY>=10'd64 && currentX<10'd384 && currentY<10'd96) 
				begin 
					address <= 11'h07C;
					initialX<=10'd352;
					initialY<=10'd64;
					char <= data[7:0]; 
				end	
			if(currentX>=10'd384 && currentY>=10'd64 && currentX<10'd416 && currentY<10'd96) 
				begin
					address <= 11'h080; 
					initialX<=10'd384; 
					initialY<=10'd64;
					char <= data[7:0]; 
				end	
			if(currentX>=10'd416 && currentY>=10'd64 && currentX<10'd448 && currentY<10'd96) 
				begin 
					address <= 11'h084; 
					initialX<=10'd416; 
					initialY<=10'd64;
					char <= data[7:0]; 
				end	
			if(currentX>=10'd448 && currentY>=10'd64 && currentX<10'd480 && currentY<10'd96) 
				begin 
					address <= 11'h088; 
					initialX<=10'd448; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd480 && currentY>=10'd64 && currentX<10'd512 && currentY<10'd96) 
				begin 
					address <= 11'h08C; 
					initialX<=10'd480; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd512 && currentY>=10'd64 && currentX<10'd544 && currentY<10'd96) 
				begin 
					address <= 11'h090;
					initialX<=10'd512; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd544 && currentY>=10'd64 && currentX<10'd576 && currentY<10'd96)
				begin 
					address <= 11'h094; 
					initialX<=10'd544; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd576 && currentY>=10'd64 && currentX<10'd608 && currentY<10'd96) // 36 caracteres
				begin 
					address <= 11'h098; 
					initialX<=10'd576; 
					initialY<=10'd64; 
					char <= data[7:0]; 
				end	
			
			// Fila 3		
			if(currentX>=10'd32 && currentY>=10'd96 && currentX<10'd64 && currentY<10'd128) 
				begin 
					address <= 11'h09c; 
					initialX<=10'd32; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd64 && currentY>=10'd96 && currentX<10'd96 && currentY<10'd128) 
				begin 
					address <= 11'h0a0; 
					initialX<=10'd64; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd96 && currentY>=10'd96 && currentX<10'd128 && currentY<10'd128) 
				begin 
					address <= 11'h0a4; 
					initialX<=10'd96; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd128 && currentY>=10'd96 && currentX<10'd160 && currentY<10'd128) 
				begin 
					address <= 11'h0a8; 
					initialX<=10'd128; 
					initialY<=10'd96; 
					char <= data[7:0];
				end	
			if(currentX>=10'd160 && currentY>=10'd96 && currentX<10'd192 && currentY<10'd128)
				begin 
					address <= 11'h0ac; 
					initialX<=10'd160; 
					initialY<=10'd96;
					char <= data[7:0]; 
				end	
			if(currentX>=10'd192 && currentY>=10'd96 && currentX<10'd224 && currentY<10'd128) 
				begin 
					address <= 11'h0b0; 
					initialX<=10'd192; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd224 && currentY>=10'd96 && currentX<10'd256 && currentY<10'd128)
				begin 
					address <= 11'h0b4; 
					initialX<=10'd224; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd256 && currentY>=10'd96 && currentX<10'd288 && currentY<10'd128) 
				begin 
					address <= 11'h0b8; 
					initialX<=10'd256; 
					initialY<=10'd96;
					char <= data[7:0]; 
				end
			if(currentX>=10'd288 && currentY>=10'd96 && currentX<10'd320 && currentY<10'd128) 
				begin
					address <= 11'h0bc;
					initialX<=10'd288; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd320 && currentY>=10'd96 && currentX<10'd352 && currentY<10'd128) 
				begin
					address <= 11'h0c0; 
					initialX<=10'd320;
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd352 && currentY>=10'd96 && currentX<10'd384 && currentY<10'd128) 
				begin 
					address <= 11'h0c4;
					initialX<=10'd352;
					initialY<=10'd96;
					char <= data[7:0]; 
				end	
			if(currentX>=10'd384 && currentY>=10'd96 && currentX<10'd416 && currentY<10'd128) 
				begin
					address <= 11'h0c8; 
					initialX<=10'd384; 
					initialY<=10'd96;
					char <= data[7:0]; 
				end	
			if(currentX>=10'd416 && currentY>=10'd96 && currentX<10'd448 && currentY<10'd128) 
				begin 
					address <= 11'h0cc; 
					initialX<=10'd416; 
					initialY<=10'd96;
					char <= data[7:0]; 
				end	
			if(currentX>=10'd448 && currentY>=10'd96 && currentX<10'd480 && currentY<10'd128) 
				begin 
					address <= 11'h0d0; 
					initialX<=10'd448; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd480 && currentY>=10'd96 && currentX<10'd512 && currentY<10'd128) 
				begin 
					address <= 11'h0d4; 
					initialX<=10'd480; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd512 && currentY>=10'd96 && currentX<10'd544 && currentY<10'd128) 
				begin 
					address <= 11'h0d8;
					initialX<=10'd512; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd544 && currentY>=10'd96 && currentX<10'd576 && currentY<10'd128)
				begin 
					address <= 11'h0dc; 
					initialX<=10'd544; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd576 && currentY>=10'd96 && currentX<10'd608 && currentY<10'd128) // 54 caracteres
				begin 
					address <= 11'h0e0; 
					initialX<=10'd576; 
					initialY<=10'd96; 
					char <= data[7:0]; 
				end	
			
			// Fila 4		
			if(currentX>=10'd32 && currentY>=10'd128 && currentX<10'd64 && currentY<10'd160) 
				begin 
					address <= 11'h0e4; 
					initialX<=10'd32; 
					initialY<=10'd128; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd64 && currentY>=10'd128 && currentX<10'd96 && currentY<10'd160) 
				begin 
					address <= 11'h0e8; 
					initialX<=10'd64; 
					initialY<=10'd128; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd96 && currentY>=10'd128 && currentX<10'd128 && currentY<10'd160) 
				begin 
					address <= 11'h0ec; 
					initialX<=10'd96; 
					initialY<=10'd128; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd128 && currentY>=10'd128 && currentX<10'd160 && currentY<10'd160) 
				begin 
					address <= 11'h0f0; 
					initialX<=10'd128; 
					initialY<=10'd128; 
					char <= data[7:0];
				end	
			if(currentX>=10'd160 && currentY>=10'd128 && currentX<10'd192 && currentY<10'd160)
				begin 
					address <= 11'h0f4; 
					initialX<=10'd160; 
					initialY<=10'd128;
					char <= data[7:0]; 
				end	
			if(currentX>=10'd192 && currentY>=10'd128 && currentX<10'd224 && currentY<10'd160) 
				begin 
					address <= 11'h0f8; 
					initialX<=10'd192; 
					initialY<=10'd128; 
					char <= data[7:0]; 
				end	
			if(currentX>=10'd224 && currentY>=10'd128 && currentX<10'd256 && currentY<10'd160) // 61 caracteres
				begin 
					address <= 11'h0fc; 
					initialX<=10'd224; 
					initialY<=10'd128; 
					char <= data[7:0]; 
				end
				
		end

endmodule 