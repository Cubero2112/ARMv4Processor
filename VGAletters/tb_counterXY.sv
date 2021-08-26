module tb_counterXY();

	logic clk;
	logic [12:0] counterX, counterY;
	
	counterXY xy(clk, counterX, counterY);
	 
	 /*initial begin
		clk<=0;
	
	 end*/
	always begin
		clk <= 0; # 5; clk <= 1; #5;
	end
	 

endmodule 

//do ROM_run_msim_rtl_verilog.do


//vsim -L altera_mf_ver -L lpm_ver tb_VGA