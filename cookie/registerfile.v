`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:03:19 10/17/2015 
// Design Name: 
// Module Name:    registerfile 
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
module registerfile(
    input [3:0] addr,
    input [15:0] din,
    input we,
	 input reset,
	 input clk,
    input [15:0] ra_din,
    input ra_we,
    output [15:0] dout,
    output [15:0] ra_dout
    );
	 
	 reg [15:0] dout_reg;
	 wire [15:0] we_select;
	 
	 wire [15:0] dout0;
	 wire [15:0] dout1;
	 wire [15:0] dout2;
	 wire [15:0] dout3;
	 wire [15:0] dout4;
	 wire [15:0] dout5;
	 wire [15:0] dout6;
	 wire [15:0] dout7;
	 wire [15:0] dout8;
	 wire [15:0] dout9;
	 
	 register16b ra (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout0)
	 );
	 register16b in (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout1)
	 );
	 register16b dr (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout2)
	 );
	 register16b sp (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout3)
	 );
	 register16b st (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout4)
	 );
	 register16b cs (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout5)
	 );
	 register16b ec (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout6)
	 );
	 register16b cf (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout7)
	 );
	 register16b cv (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout8)
	 );
	 register16b op (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout9)
	 );
	 
	 always @(posedge clk) begin
		case(addr)
			4'b0000: dout_reg = dout0;
			4'b0001: dout_reg = dout1;
			4'b0010: dout_reg = dout2;
			4'b0011: dout_reg = dout3;
			4'b0101: dout_reg = dout4;
			4'b0110: dout_reg = dout5;
			4'b0111: dout_reg = dout6;
			4'b1000: dout_reg = dout7;
			4'b1001: dout_reg = dout8;
			4'b1010: dout_reg = dout9;
			default: dout_reg = 0;
		endcase
	 end
	 
	 assign dout = dout_reg;

endmodule
