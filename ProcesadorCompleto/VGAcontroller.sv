module VGAcontroller(
		input clk, 
		output logic H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK, 
		output logic [12:0] counterX, counterY);

    //---------------------Iniciando el contador X y Y-------------------------------------------
								
    counterXY CXY (clk, counterX,counterY);
    
    //---------------------Señales Activas en bajo-----------------------------------------------
    
                    //Parte    Porch              Parte     Porch        Sincronizacion
                    //Activa   Horizontal         Activa    Horizontal   Horizontal
    assign H_SYNC = ~(counterX > 10'd640 + 10'd16 & counterX < 10'd640 + 10'd16 +    10'd96);
    
    
                    //Parte    Porch              Parte     Porch     Sincronización
                    //Activa   Vertical           Activa    Vertical  Vertical
    assign V_SYNC = ~(counterY > 10'd480 + 10'd11 & counterY < 10'd480 + 10'd11 +  2);
    
    
    assign SYNC_B = 1'b1;//H_SYNC & V_SYNC;
    
                        //Parte    						Parte	
                        //Activa H                 Activa V
    assign SYNC_BLANK = (counterX < 10'd640 ) & (counterY < 10'd480);

endmodule 