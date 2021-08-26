module counterXY(input logic clk25, output logic[12:0] counter_X, counter_Y);

	 int counterX = 1'b0;
	 int counterY = 1'b0;

    always @(posedge clk25) 
		begin
			if (counterX == 10'b1100100000) 
				begin //cuando el contador X llega al maximo entonces counterX se vuelve 0 y le suma uno al contador y.
					counterX <= 1'b0;
					counterY <= counterY + 1'b1;
					
					if (counterY == 10'd525) // cuando el contador Y llega a su maximo entonces counterY se hace 0.
						counterY <= 0;
				end
        
			else
					counterX <= counterX + 1'b1;
     end	
	  
	  assign counter_X = counterX;
	  assign counter_Y = counterY;

endmodule 