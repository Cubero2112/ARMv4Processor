module tb_instructionMemory();
	logic[31:0] data;
	logic[7:0] address;
instructionMemory rom_mem(address,data);
	
	initial begin
		#10; address = 8'h00;
		#10; address = 8'h04;
		#10; address = 8'h08;
	
	end


endmodule 