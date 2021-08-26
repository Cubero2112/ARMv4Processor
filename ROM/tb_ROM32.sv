module tb_ROM32();
	logic[31:0] data;
	logic[10:0] address;
	ROM32 rom_mod(address,data);
	
	initial begin
		#10; address = 11'h000;
		#10; address = 11'h004;
		#10; address = 11'h008;
	
	end
	
endmodule 