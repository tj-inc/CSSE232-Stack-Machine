`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:52:04 10/19/2015 
// Design Name: 
// Module Name:    subone14b 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module subone14b(
    input [13:0] a,
    output [13:0] s
    );
	 
	 wire s0;
	 wire s1;
	 wire s2;
	 wire s3;
	 wire s4;
	 wire s5;
	 wire s6;
	 wire s7;
	 wire s8;
	 wire s9;
	 wire s10;
	 wire s11;
	 wire s12;
	 wire s13;
	 
	 wire c1;
	 wire c2;
	 wire c3;
	 wire c4;
	 wire c5;
	 wire c6;
	 wire c7;
	 wire c8;
	 wire c9;
	 wire c10;
	 wire c11;
	 wire c12;
	 wire c13;
	 
	 assign s0 = ~a[0];
	 assign s1 = (a[1] && c1) + (~a[1] && ~c1);
	 assign s2 = (a[2] && c2) + (~a[2] && ~c2);
	 assign s3 = (a[3] && c3) + (~a[3] && ~c3);
	 assign s4 = (a[4] && c4) + (~a[4] && ~c4);
	 assign s5 = (a[5] && c5) + (~a[5] && ~c5);
	 assign s6 = (a[6] && c6) + (~a[6] && ~c6);
	 assign s7 = (a[7] && c7) + (~a[7] && ~c7);
	 assign s8 = (a[8] && c8) + (~a[8] && ~c8);
	 assign s9 = (a[9] && c9) + (~a[9] && ~c9);
	 assign s10 = (a[10] && c10) + (~a[10] && ~c10);
	 assign s11 = (a[11] && c11) + (~a[11] && ~c11);
	 assign s12 = (a[12] && c12) + (~a[12] && ~c12);
	 assign s13 = (a[13] && c13) + (~a[13] && ~c13);
	 
	 assign c1 = a[0];
	 assign c2 = a[1] || c1;
	 assign c3 = a[2] || c2;
	 assign c4 = a[3] || c3;
	 assign c5 = a[4] || c4;
	 assign c6 = a[5] || c5;
	 assign c7 = a[6] || c6;
	 assign c8 = a[7] || c7;
	 assign c9 = a[8] || c8;
	 assign c10 = a[9] || c9;
	 assign c11 = a[10] || c10;
	 assign c12 = a[11] || c11;
	 assign c13 = a[12] || c12;
	 
	 assign s = {s13,s12,s11,s10,s9,s8,s7,s6,s5,s4,s3,s2,s1,s0};
	 
endmodule