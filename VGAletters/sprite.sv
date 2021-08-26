module sprite
	(
	  input logic clk,
	  input logic [7:0] char, 
	  input logic[9:0] initialX, initialY, currentX, currentY, 
	  output logic[23:0] RGB
	 );

    //ROM
	 logic [23:0] rgb_temp;
    logic [9:0] address;
    logic [2:0] color;
	 logic [2:0] color32,color33,color34,color35,color36,color37,color38,color39,color40,
					 color41,color42,color43,color44,color45,color46,color47,color48,color49,color50,
					 color51,color52,color53,color54,color55,color56,color57,color58,color59,color60,
					 color61,color62,color63,color64,color65,color66,color67,color68,color69,color70,
					 color71,color72,color73,color74,color75,color76,color77,color78,color79,color80,
					 color81,color82,color83,color84,color85,color86,color87,color88,color89,color90,
					 color91,color92,color93,color94,color95,color96,color97,color98,color99,color100,
					 color101,color102,color103,color104,color105,color106,color107,color108,color109,color110,
					 color111,color112,color113,color114,color115,color116,color117,color118,color119,color120,
					 color121,color122,color123,color124,color125,color126;

	 
   //ADDRESS GENERATION
   addressGenerator direccionesM (initialX, initialY,currentX, currentY, address);
	
	
	
	ascii32      ROM32    ( .address(address), .clock(clk), .q(color32));
	ascii33      ROM33    ( .address(address), .clock(clk), .q(color33));
	ascii34      ROM34    ( .address(address), .clock(clk), .q(color34));
	ascii35      ROM35    ( .address(address), .clock(clk), .q(color35));
	ascii36      ROM36    ( .address(address), .clock(clk), .q(color36));
	ascii37      ROM37    ( .address(address), .clock(clk), .q(color37));
	ascii38      ROM38    ( .address(address), .clock(clk), .q(color38));
	ascii39      ROM39    ( .address(address), .clock(clk), .q(color39));
	ascii40      ROM40    ( .address(address), .clock(clk), .q(color40));
	ascii41      ROM41    ( .address(address), .clock(clk), .q(color41));
	ascii42      ROM42    ( .address(address), .clock(clk), .q(color42));
	ascii43      ROM43    ( .address(address), .clock(clk), .q(color43));
	ascii44      ROM44    ( .address(address), .clock(clk), .q(color44));
	ascii45      ROM45    ( .address(address), .clock(clk), .q(color45));
	ascii46      ROM46    ( .address(address), .clock(clk), .q(color46));
	ascii47      ROM47    ( .address(address), .clock(clk), .q(color47));
	ascii48      ROM48    ( .address(address), .clock(clk), .q(color48));
	ascii49      ROM49    ( .address(address), .clock(clk), .q(color49));
	ascii50      ROM50    ( .address(address), .clock(clk), .q(color50));
	ascii51      ROM51    ( .address(address), .clock(clk), .q(color51));
	ascii52      ROM52    ( .address(address), .clock(clk), .q(color52));
	ascii53      ROM53    ( .address(address), .clock(clk), .q(color53));
	ascii54      ROM54    ( .address(address), .clock(clk), .q(color54));
	ascii55      ROM55    ( .address(address), .clock(clk), .q(color55));
	ascii56      ROM56    ( .address(address), .clock(clk), .q(color56));
	ascii57      ROM57    ( .address(address), .clock(clk), .q(color57));
	ascii58      ROM58    ( .address(address), .clock(clk), .q(color58));
	ascii59      ROM59    ( .address(address), .clock(clk), .q(color59));
	ascii60      ROM60    ( .address(address), .clock(clk), .q(color60));
	ascii61      ROM61    ( .address(address), .clock(clk), .q(color61));
	ascii62      ROM62    ( .address(address), .clock(clk), .q(color62));
	ascii63      ROM63    ( .address(address), .clock(clk), .q(color63));
	ascii64      ROM64    ( .address(address), .clock(clk), .q(color64));
	ascii65      ROM65    ( .address(address), .clock(clk), .q(color65));
	ascii66      ROM66    ( .address(address), .clock(clk), .q(color66));
	ascii67      ROM67    ( .address(address), .clock(clk), .q(color67));
	ascii68      ROM68    ( .address(address), .clock(clk), .q(color68));
	ascii69      ROM69    ( .address(address), .clock(clk), .q(color69));
	ascii70      ROM70    ( .address(address), .clock(clk), .q(color70));
	ascii71      ROM71    ( .address(address), .clock(clk), .q(color71));
	ascii72      ROM72    ( .address(address), .clock(clk), .q(color72));
	ascii73      ROM73    ( .address(address), .clock(clk), .q(color73));
	ascii74      ROM74    ( .address(address), .clock(clk), .q(color74));
	ascii75      ROM75    ( .address(address), .clock(clk), .q(color75));
	ascii76      ROM76    ( .address(address), .clock(clk), .q(color76));
	ascii77      ROM77    ( .address(address), .clock(clk), .q(color77));
	ascii78      ROM78    ( .address(address), .clock(clk), .q(color78));
	ascii79      ROM79    ( .address(address), .clock(clk), .q(color79));
	ascii80      ROM80    ( .address(address), .clock(clk), .q(color80));
	ascii81      ROM81    ( .address(address), .clock(clk), .q(color81));
	ascii82      ROM82    ( .address(address), .clock(clk), .q(color82));
	ascii83      ROM83    ( .address(address), .clock(clk), .q(color83));
	ascii84      ROM84    ( .address(address), .clock(clk), .q(color84));
	ascii85      ROM85    ( .address(address), .clock(clk), .q(color85));
	ascii86      ROM86    ( .address(address), .clock(clk), .q(color86));
	ascii87      ROM87    ( .address(address), .clock(clk), .q(color87));
	ascii88      ROM88    ( .address(address), .clock(clk), .q(color88));
	ascii89      ROM89    ( .address(address), .clock(clk), .q(color89));
	ascii90      ROM90    ( .address(address), .clock(clk), .q(color90));
	ascii91      ROM91    ( .address(address), .clock(clk), .q(color91));
	ascii92      ROM92    ( .address(address), .clock(clk), .q(color92));
	ascii93      ROM93    ( .address(address), .clock(clk), .q(color93));
	ascii94      ROM94    ( .address(address), .clock(clk), .q(color94));
	ascii95      ROM95    ( .address(address), .clock(clk), .q(color95));
	ascii96      ROM96    ( .address(address), .clock(clk), .q(color96));
	ascii97      ROM97    ( .address(address), .clock(clk), .q(color97));
	ascii98      ROM98    ( .address(address), .clock(clk), .q(color98));
	ascii99      ROM99    ( .address(address), .clock(clk), .q(color99));
	ascii100    ROM100    ( .address(address), .clock(clk), .q(color100));
	ascii101    ROM101    ( .address(address), .clock(clk), .q(color101));
	ascii102    ROM102    ( .address(address), .clock(clk), .q(color102));
	ascii103    ROM103    ( .address(address), .clock(clk), .q(color103));
	ascii104    ROM104    ( .address(address), .clock(clk), .q(color104));
	ascii105    ROM105    ( .address(address), .clock(clk), .q(color105));
	ascii106    ROM106    ( .address(address), .clock(clk), .q(color106));
	ascii107    ROM107    ( .address(address), .clock(clk), .q(color107));
	ascii108    ROM108    ( .address(address), .clock(clk), .q(color108));
	ascii109    ROM109    ( .address(address), .clock(clk), .q(color109));
	ascii110    ROM110    ( .address(address), .clock(clk), .q(color110));
	ascii111    ROM111    ( .address(address), .clock(clk), .q(color111));
	ascii112    ROM112    ( .address(address), .clock(clk), .q(color112));
	ascii113    ROM113    ( .address(address), .clock(clk), .q(color113));
	ascii114    ROM114    ( .address(address), .clock(clk), .q(color114));
	ascii115    ROM115    ( .address(address), .clock(clk), .q(color115));
	ascii116    ROM116    ( .address(address), .clock(clk), .q(color116));
	ascii117    ROM117    ( .address(address), .clock(clk), .q(color117));
	ascii118    ROM118    ( .address(address), .clock(clk), .q(color118));
	ascii119    ROM119    ( .address(address), .clock(clk), .q(color119));
	ascii120    ROM120    ( .address(address), .clock(clk), .q(color120));
	ascii121    ROM121    ( .address(address), .clock(clk), .q(color121));
	ascii122    ROM122    ( .address(address), .clock(clk), .q(color122));
	ascii123    ROM123    ( .address(address), .clock(clk), .q(color123));
	ascii124    ROM124    ( .address(address), .clock(clk), .q(color124));
	ascii125    ROM125    ( .address(address), .clock(clk), .q(color125));
	ascii126    ROM126    ( .address(address), .clock(clk), .q(color126));
	
	
	 //omtest ROM365 (address, clk, color);
    //MUX
	 charMux colorMux (char, color32,color33,color34,color35,color36,color37,color38,color39,color40,
					 color41,color42,color43,color44,color45,color46,color47,color48,color49,color50,
					 color51,color52,color53,color54,color55,color56,color57,color58,color59,color60,
					 color61,color62,color63,color64,color65,color66,color67,color68,color69,color70,
					 color71,color72,color73,color74,color75,color76,color77,color78,color79,color80,
					 color81,color82,color83,color84,color85,color86,color87,color88,color89,color90,
					 color91,color92,color93,color94,color95,color96,color97,color98,color99,color100,
					 color101,color102,color103,color104,color105,color106,color107,color108,color109,color110,
					 color111,color112,color113,color114,color115,color116,color117,color118,color119,color120,
					 color121,color122,color123,color124,color125,color126,color);
    
	 //DECO
	 rgbDecoder DECOM (color, rgb_temp);
	 //COMPARE current pos and initial pos
	 comparator comp (initialX, initialY, currentX, currentY,rgb_temp, RGB);
	

endmodule 

//do ROM_run_msim_rtl_verilog.do


//vsim -L altera_mf_ver -L lpm_ver tb_VGA