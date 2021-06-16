// Qsys_nios_custom_instr_floating_point_2_0.v

// This file was auto-generated from fpoint2_qsys_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 16.1 196

`timescale 1 ps / 1 ps
module Qsys_nios_custom_instr_floating_point_2_0 #(
		parameter arithmetic_present = 1,
		parameter root_present       = 0,
		parameter conversion_present = 1,
		parameter comparison_present = 1
	) (
		input  wire [31:0] s1_dataa,     // s1.dataa
		input  wire [31:0] s1_datab,     //   .datab
		input  wire [3:0]  s1_n,         //   .n
		output wire [31:0] s1_result,    //   .result
		input  wire        s2_clk,       // s2.clk
		input  wire        s2_clk_en,    //   .clk_en
		input  wire [31:0] s2_dataa,     //   .dataa
		input  wire [31:0] s2_datab,     //   .datab
		input  wire [2:0]  s2_n,         //   .n
		input  wire        s2_reset,     //   .reset
		input  wire        s2_reset_req, //   .reset_req
		input  wire        s2_start,     //   .start
		output wire        s2_done,      //   .done
		output wire [31:0] s2_result     //   .result
	);

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (arithmetic_present != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					arithmetic_present_check ( .error(1'b1) );
		end
		if (root_present != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					root_present_check ( .error(1'b1) );
		end
		if (conversion_present != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					conversion_present_check ( .error(1'b1) );
		end
		if (comparison_present != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					comparison_present_check ( .error(1'b1) );
		end
	endgenerate

	fpoint2_combi #(
		.arithmetic_present (1),
		.comparison_present (1)
	) fpci_combi (
		.dataa  (s1_dataa),  // s1.dataa
		.datab  (s1_datab),  //   .datab
		.n      (s1_n),      //   .n
		.result (s1_result)  //   .result
	);

	fpoint2_multi #(
		.arithmetic_present (1),
		.root_present       (0),
		.conversion_present (1)
	) fpci_multi (
		.clk       (s2_clk),       // s1.clk
		.clk_en    (s2_clk_en),    //   .clk_en
		.dataa     (s2_dataa),     //   .dataa
		.datab     (s2_datab),     //   .datab
		.n         (s2_n),         //   .n
		.reset     (s2_reset),     //   .reset
		.reset_req (s2_reset_req), //   .reset_req
		.start     (s2_start),     //   .start
		.done      (s2_done),      //   .done
		.result    (s2_result)     //   .result
	);

endmodule
