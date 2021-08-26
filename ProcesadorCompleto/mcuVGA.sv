module mcuVGA(
    input logic  clk, rstBtn,
	 input [31:0] rdataForVga,
	 output logic[7:0] addressForVga,
    output logic H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK,clk25,
    output logic [23:0] RGB);

	 
   logic [9:0] counterX, counterY;

    //--------------Instancia del divisor de clock-------------------------//
	clockDivider dvclk (clk, clk25);

    //--------------Instancia del controlador VGA--------------------------//
	VGAcontroller cntVGA (clk25, H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK, counterX, counterY);
		

    //--------------Instancia del generador de Video----------------------//	
	topController topc (clk25, rstBtn, counterX, counterY, rdataForVga, addressForVga, RGB);


endmodule 