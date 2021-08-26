module sprite65
	(
	  input logic clk, 
	  input logic [9:0] posX, posY,
	  input logic [12:0] counterX, counterY, 
	  output [23:0] RGB
	 );

    //ROM
    logic [9:0] address;
    logic [2:0] color;
	 
	 //ROMas ROM65 (address, clk, color);
	 ROMas ROM65 (address, color);
    //DECO
    rgbDecoder DECOM (color, RGB);
    logic x63, y63;
    //ADDRESS GENERATION
    addressGenerator direccionesM (posx, posy,counterX, counterY, x63, y63, address);	

endmodule 

//do ROM_run_msim_rtl_verilog.do


//vsim -L altera_mf_ver -L lpm_ver tb_VGA