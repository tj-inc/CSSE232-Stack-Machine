`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:20:35 10/17/2015 
// Design Name: 
// Module Name:    register16b 
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
module register16b(
    input [15:0] din,
    input we,
    input clk,
	 input reset,
    output [15:0] dout
    );
	 
	 FDCE bit0(
		.D(din[0]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[0])
	 );

	 	 
	 FDCE bit1(
		.D(din[1]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[1])
	 );
	 
	 FDCE bit2(
		.D(din[2]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[2])
	 );
	 
	 FDCE bit3(
		.D(din[3]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[3])
	 );
	 
	 FDCE bit4(
		.D(din[4]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[4])
	 );
	 
	 FDCE bit5(
		.D(din[5]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[5])
	 );
	 
	 FDCE bit6(
		.D(din[6]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[6])
	 );
	 
	 FDCE bit7(
		.D(din[7]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[7])
	 );
	 
	 FDCE bit8(
		.D(din[8]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[8])
	 );
	 
	 FDCE bit9(
		.D(din[9]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[9])
	 );
	 
	 FDCE bit10(
		.D(din[10]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[10])
	 );
	 
	 FDCE bit11(
		.D(din[11]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[11])
	 );
	 
	 FDCE bit12(
		.D(din[12]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[12])
	 );
	 
	 FDCE bit13(
		.D(din[13]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[13])
	 );
	 
	 FDCE bit14(
		.D(din[14]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[14])
	 );
	 
	 FDCE bit15(
		.D(din[15]),
		.CE(we),
		.C(clk),
		.CLR(reset),
		.Q(dout[15])
	 );

endmodule