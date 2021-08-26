module mcuVGA(
    input logic  clk, rstBtn,
    output logic H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK,clk25,
    output logic [23:0] RGB);

	 
    logic [12:0] counterX, counterY;

    //--------------Instancia del divisor de clock-------------------------//
	clockDivider dvclk (clk, clk25);

    //--------------Instancia del controlador VGA--------------------------//
	VGAcontroller cntVGA (clk25, H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK, counterX, counterY);
		

    //--------------Instancia del generador de Video----------------------//	
	topController genVGA (clk25, rstBtn, counterX, counterY, RGB);


endmodule 