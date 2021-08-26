module sync_memory(
	input logic clk,
	input logic [8:0] address,
	input logic [31:0] data_input,
	input logic write,
	output logic [31:0] data_output, qb);
	
	
	logic [31:0] mem [511:0];

		//always_ff @(posedge clk) begin
		//if (write) begin
		//mem[address] <= data_input;
		//data_output <= data_input;
		//end else data_output <= 32'bh0;
		//end
		//always_ff @(edge clk) begin
		//if (~write) begin
		//data_output <= mem[address];
		//end else data_output <= 32'bh0;
		//end
	
endmodule
	