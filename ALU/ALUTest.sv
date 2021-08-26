module ALUTest();
	
	logic [3:0] a, b, s;
	logic cin, cout;
	
	adder #(4) adder4Bits(a, b, cin, s, cout);
	
	initial begin
		a = 4'd3; b = 4'd14; cin = 0; #5;
		
		a = 4'd2; b = 4'd6; cin = 1; #5;
		
		a = 4'd7; b = 4'd4; cin = 0; #5;
	
	end


endmodule