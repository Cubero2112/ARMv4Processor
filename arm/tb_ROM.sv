module tb_ROM();
logic clk,rst;
TopROM tbrom(clk,rst);

always begin
	clk=~clk;#5;
end

initial begin 
	rst=1;#10;rst=0;
	clk=0;
end
endmodule 