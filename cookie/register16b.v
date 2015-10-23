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
	 
	 FDRE bit0(
		.D(din[0]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[0])
	 );
	 
	 FDRE bit1(
		.D(din[1]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[1])
	 );
	 
	 FDRE bit2(
		.D(din[2]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[2])
	 );
	 
	 FDRE bit3(
		.D(din[3]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[3])
	 );
	 
	 FDRE bit4(
		.D(din[4]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[4])
	 );
	 
	 FDRE bit5(
		.D(din[5]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[5])
	 );
	 
	 FDRE bit6(
		.D(din[6]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[6])
	 );
	 
	 FDRE bit7(
		.D(din[7]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[7])
	 );
	 
	 FDRE bit8(
		.D(din[8]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[8])
	 );
	 
	 FDRE bit9(
		.D(din[9]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[9])
	 );
	 
	 FDRE bit10(
		.D(din[10]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[10])
	 );
	 
	 FDRE bit11(
		.D(din[11]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[11])
	 );
	 
	 FDRE bit12(
		.D(din[12]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[12])
	 );
	 
	 FDRE bit13(
		.D(din[13]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[13])
	 );
	 
	 FDRE bit14(
		.D(din[14]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[14])
	 );
	 
	 FDRE bit15(
		.D(din[15]),
		.CE(we),
		.C(clk),
		.R(reset),
		.Q(dout[15])
	 );
	 
endmodule
