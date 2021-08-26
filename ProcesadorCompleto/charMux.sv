//MUX encargada de seleccionar la salida de memoria
module charMux
	(
	 input logic [7:0] char, 
	  input logic [2:0] rgb32,rgb33,rgb34,rgb35,rgb36,rgb37,rgb38,rgb39,rgb40,
								rgb41,rgb42,rgb43,rgb44,rgb45,rgb46,rgb47,rgb48,rgb49,rgb50,
								rgb51,rgb52,rgb53,rgb54,rgb55,rgb56,rgb57,rgb58,rgb59,rgb60,
								rgb61,rgb62,rgb63,rgb64,rgb65,rgb66,rgb67,rgb68,rgb69,rgb70,
								rgb71,rgb72,rgb73,rgb74,rgb75,rgb76,rgb77,rgb78,rgb79,rgb80,
								rgb81,rgb82,rgb83,rgb84,rgb85,rgb86,rgb87,rgb88,rgb89,rgb90,
								rgb91,rgb92,rgb93,rgb94,rgb95,rgb96,rgb97,rgb98,rgb99,rgb100,								
								rgb101,rgb102,rgb103,rgb104,rgb105,rgb106,rgb107,rgb108,rgb109,rgb110,
								rgb111,rgb112,rgb113,rgb114,rgb115,rgb116,rgb117,rgb118,rgb119,rgb120,
								rgb121,rgb122,rgb123,rgb124,rgb125,rgb126,

	  output logic [2:0] RGB);

		  
	always @*
	 begin
        case (char)
				8'd32 :   RGB <= rgb32;
				8'd33 :   RGB <= rgb33;
				8'd34 :   RGB <= rgb34;
				8'd35 :   RGB <= rgb35;
				8'd36 :   RGB <= rgb36;
				8'd37 :   RGB <= rgb37;
				8'd38 :   RGB <= rgb38;
				8'd39 :   RGB <= rgb39;
				8'd40 :   RGB <= rgb40;
				8'd41 :   RGB <= rgb41;
				8'd42 :   RGB <= rgb42;
				8'd43 :   RGB <= rgb43;
				8'd44 :   RGB <= rgb44;
				8'd45 :   RGB <= rgb45;
				8'd46 :   RGB <= rgb46;
				8'd47 :   RGB <= rgb47;
				8'd48 :   RGB <= rgb48;
				8'd49 :   RGB <= rgb49;
				8'd50 :   RGB <= rgb50;
				8'd51 :   RGB <= rgb51;
				8'd52 :   RGB <= rgb52;
				8'd53 :   RGB <= rgb53;
				8'd54 :   RGB <= rgb54;
				8'd55 :   RGB <= rgb55;
				8'd56 :   RGB <= rgb56;
				8'd57 :   RGB <= rgb57;
				8'd58 :   RGB <= rgb58;
				8'd59 :   RGB <= rgb59;
				8'd60 :   RGB <= rgb60;
				8'd61 :   RGB <= rgb61;
				8'd62 :   RGB <= rgb62;
				8'd63 :   RGB <= rgb63;
				8'd64 :   RGB <= rgb64;
				8'd65 :   RGB <= rgb65;
				8'd66 :   RGB <= rgb66;
				8'd67 :   RGB <= rgb67;
				8'd68 :   RGB <= rgb68;
				8'd69 :   RGB <= rgb69;
				8'd70 :   RGB <= rgb70;
				8'd71 :   RGB <= rgb71;
				8'd72 :   RGB <= rgb72;
				8'd73 :   RGB <= rgb73;
				8'd74 :   RGB <= rgb74;
				8'd75 :   RGB <= rgb75;
				8'd76 :   RGB <= rgb76;
				8'd77 :   RGB <= rgb77;
				8'd78 :   RGB <= rgb78;
				8'd79 :   RGB <= rgb79;
				8'd80 :   RGB <= rgb80;
				8'd81 :   RGB <= rgb81;
				8'd82 :   RGB <= rgb82;
				8'd83 :   RGB <= rgb83;
				8'd84 :   RGB <= rgb84;
				8'd85 :   RGB <= rgb85;
				8'd86 :   RGB <= rgb86;
				8'd87 :   RGB <= rgb87;
				8'd88 :   RGB <= rgb88;
				8'd89 :   RGB <= rgb89;
				8'd90 :   RGB <= rgb90;
				8'd91 :   RGB <= rgb91;
				8'd92 :   RGB <= rgb92;
				8'd93 :   RGB <= rgb93;
				8'd94 :   RGB <= rgb94;
				8'd95 :   RGB <= rgb95;
				8'd96 :   RGB <= rgb96;
				8'd97 :   RGB <= rgb97;
				8'd98 :   RGB <= rgb98;
				8'd99 :   RGB <= rgb99;
				8'd100 : RGB <= rgb100;
				8'd101 : RGB <= rgb101;
				8'd102 : RGB <= rgb102;
				8'd103 : RGB <= rgb103;
				8'd104 : RGB <= rgb104;
				8'd105 : RGB <= rgb105;
				8'd106 : RGB <= rgb106;
				8'd107 : RGB <= rgb107;
				8'd108 : RGB <= rgb108;
				8'd109 : RGB <= rgb109;
				8'd110 : RGB <= rgb110;
				8'd111 : RGB <= rgb111;
				8'd112 : RGB <= rgb112;
				8'd113 : RGB <= rgb113;
				8'd114 : RGB <= rgb114;
				8'd115 : RGB <= rgb115;
				8'd116 : RGB <= rgb116;
				8'd117 : RGB <= rgb117;
				8'd118 : RGB <= rgb118;
				8'd119 : RGB <= rgb119;
				8'd120 : RGB <= rgb120;
				8'd121 : RGB <= rgb121;
				8'd122 : RGB <= rgb122;
				8'd123 : RGB <= rgb123;
				8'd124 : RGB <= rgb124;
				8'd125 : RGB <= rgb125;
				8'd126 : RGB <= rgb126;

            default: RGB <=rgb32;
        endcase
	 end

endmodule 