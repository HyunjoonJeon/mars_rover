module colour_threshold(

	input     [7:0] 	hue,//  0 - 360
	input     [7:0]   	sat,// 0- 255
	input     [7:0] 	val, // 0- 255
	output     			red_detect,
	output	  			green_detect,
	output	  			blue_detect,
	output     			grey_detect,
	output     			yellow_detect
);
	// Detect red areas
	assign red_detect = 		(8'd245   < hue) & (hue < 8'd30  ) 
							  & (8'd94  < sat) & (sat < 8'd121 ) 
							  & (8'd111  < val) & (val < 8'd180 );

	assign green_detect =  		(8'd78 < hue) & (hue < 8'd99 ) 
							  & (8'd123 < sat) & (sat < 8'd227 )
							  & (8'd56 < val) & (val < 8'd231 );
								 
	assign blue_detect = 		(8'd110 < hue) & (hue < 8'd145 ) 
							  & (8'd60  < sat) & (sat < 8'd150 )
							  & (8'd34  < val) & (val < 8'd255 );

	assign yellow_detect = 		(8'd16  < hue) & (hue < 8'd45  )  
							  & (8'd183 < sat) & (sat < 8'd255 )
							  & (8'd54  < val) & (val < 8'd120 );

	assign grey_detect = 		(8'd65  < hue) & (hue < 8'd140 ) 
							  & (8'd50  < sat) & (sat < 8'd130 )
							  & (8'd50  < val) & (val < 8'd100 );

//DARK MODE
//	assign red_detect = 		((8'd244   < hue) & (hue < 8'd255  ) || (8'd0   < hue) & (hue < 8'd18  ))
//							  & (8'd203  < sat) & (sat < 8'd236 ) 
//							  & (8'd163  < val) & (val < 8'd255 );
//
//   assign green_detect =  		(8'd46 < hue) & (hue < 8'd78 ) 
//							  & (8'd158 < sat) & (sat < 8'd255 )
//							  & (8'd37 < val) & (val < 8'd139 );
//								 
//	assign blue_detect = 		(8'd31 < hue) & (hue < 8'd48 ) 
//							  & (8'd32  < sat) & (sat < 8'd136 )
//							  & (8'd45  < val) & (val < 8'd153 );
//
//	assign yellow_detect = 		(8'd8  < hue) & (hue < 8'd20  )  
//							  & (8'd220 < sat) & (sat < 8'd255 )
//							  & (8'd179  < val) & (val < 8'd255 );
//
//	assign grey_detect = 		(8'd7  < hue) & (hue < 8'd56 ) 
//							  & (8'd86  < sat) & (sat < 8'd255 )
//							  & (8'd0  < val) & (val < 8'd36 );


	

endmodule