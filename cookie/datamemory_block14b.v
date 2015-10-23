`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:14:53 10/16/2015 
// Design Name: 
// Module Name:    datamemory_block14b 
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
module datamemory_block14b(
	 input [15:0] addr,
	 input [15:0] din,
    input wea,
    input clk,
    output [15:0] douta,
    output [15:0] doutb
	 //output [13:0] fsp
    );
	 
	 wire [13:0] fsp;
	 wire [15:0] gnd16b;
	 
	 assign gnd16b = 16'b0;
	 
	 always @(addr) begin
		if (addr[15:14] != 0) begin
			// Exception!
			$display("Illegal Memory Address!");
		end
	 end
	 
	 subone14b subone (
		.a(addr[13:0]),
		.s(fsp)
	 );
	 
	 memory_block14b mem (
		.clka(clk), 
		.wea(wea), 
		.addra(addr[13:0]), 
		.dina(din), 
		.douta(douta), 
		.clkb(clk), 
		.web(1'b0), 
		.addrb(fsp), 
		.dinb(gnd16b), 
		.doutb(doutb)
	 );

endmodule
