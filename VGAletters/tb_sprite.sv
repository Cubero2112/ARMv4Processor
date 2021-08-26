module tb_sprite();
	logic[9:0] posx, posy, counterX, counterY;
	logic [23:0] RGB;
    //ROM
    logic [9:0] address;
    logic [2:0] color;
	 logic x63, y63;
	 
	 sprite65 spr(clk, posx, posy, counterX, counterY, RGB);
	 
	 initial begin
		posx=10'd100;
		posy=10'd50;
		counterX=10'd90;
		counterY=10'd40;
		#10;
		counterX=10'd100;
		counterY=10'd40;
		#10;
		counterX=10'd100;
		counterY=10'd50;
		#10;
		counterX=10'd102;
		counterY=10'd50;
		#10;
		counterX=10'd105;
		counterY=10'd55;
		
		
		
	 end
	 
	 
	 

endmodule 

//do ROM_run_msim_rtl_verilog.do


//vsim -L altera_mf_ver -L lpm_ver tb_VGA