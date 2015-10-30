`timescale 1ns / 1ps

module sign_ext_11b_16b(
	input [10:0] in,
	output [15:0] out
	);	
	assign out[10:0]  = in;
	assign out[15:11] = (in[10]) ? 5'b11111 : 5'b00000;
endmodule
