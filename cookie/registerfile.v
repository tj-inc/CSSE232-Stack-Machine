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
	 reg [8:0] we_select;
	 
	 wire [15:0] dout0;
	 wire [15:0] dout1;
	 wire [15:0] dout2;
	 wire [15:0] dout3;
	 wire [15:0] dout4;
	 wire [15:0] dout5;
	 wire [15:0] dout6;
	 wire [15:0] dout7;
	 wire [15:0] dout8;
	 
	 register16b ra (
		.din(ra_we ? ra_din : din), 
		.we((we&we_select[0]) | ra_we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout0)
	 );
	 register16b in (
		.din(din), 
		.we(we&we_select[1]), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout1)
	 );
	 register16b dr (
		.din(din), 
		.we(we&we_select[2]), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout2)
	 );
	 register16b st (
		.din(din), 
		.we(we&we_select[3]), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout3)
	 );
	 register16b cs (
		.din(din), 
		.we(we&we_select[4]), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout4)
	 );
	 register16b ec (
		.din(din), 
		.we(we&we_select[5]), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout5)
	 );
	 register16b cf (
		.din(din), 
		.we(we&we_select[6]), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout6)
	 );
	 register16b cv (
		.din(din), 
		.we(we&we_select[7]), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout7)
	 );
	 register16b op (
		.din(din), 
		.we(we&we_select[8]), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout8)
	 );
	 
	 always @(posedge clk) begin
		case(addr)
			4'b0000: begin
				dout_reg <= dout0;
				we_select <= 9'b000000001;
			end
			4'b0001: begin
				dout_reg <= dout1;
				we_select <= 9'b000000010;
			end
			4'b0010: begin
				dout_reg <= dout2;
				we_select <= 9'b000000100;
			end
			4'b0011: begin
				dout_reg <= dout3;
				we_select <= 9'b000001000;
			end
			4'b0100: begin
				dout_reg <= dout4;
				we_select <= 9'b000010000;
			end
			4'b0101: begin
				dout_reg <= dout5;
				we_select <= 9'b000100000;
			end
			4'b0110: begin
				dout_reg <= dout6;
				we_select <= 9'b001000000;
			end
			4'b0111: begin
				dout_reg <= dout7;
				we_select <= 9'b010000000;
			end
			4'b1000: begin
				dout_reg <= dout8;
				we_select <= 9'b100000000;
			end
			default: begin
				dout_reg <= 0;
				we_select <= 9'b000000000;
			end
		endcase
	 end
	 
	 assign dout = dout_reg;
	 assign ra_out = dout0;

endmodule
