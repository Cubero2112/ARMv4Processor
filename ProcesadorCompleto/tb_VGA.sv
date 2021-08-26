`timescale 1 ps / 1 ps

module tb_VGA();

	logic clk, rst, H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK, clk25;
	logic [23:0] RGB;

	mcuVGA cc (clk, rst, H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK, clk25, RGB);

	always begin
		clk <= 0; # 5; clk <= 1; #5;
	end

	initial begin 
		rst <= 0; # 5; rst <= 1; #5;
	end
	
endmodule 


//vsim -L altera_mf_ver -L lpm_ver tb_VGA