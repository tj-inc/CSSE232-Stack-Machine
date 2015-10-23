`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:23:51 10/17/2015
// Design Name:   register16b
// Module Name:   C:/MEGA/RHIT/CSSE232/Final Project Git/cookie/register16b_tb.v
// Project Name:  cookie
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register16b_tb;

	// Inputs
	reg [15:0] din;
	reg we;
	reg clk;
	reg reset;

	// Outputs
	wire [15:0] dout;

	// Instantiate the Unit Under Test (UUT)
	register16b uut (
		.din(din), 
		.we(we), 
		.clk(clk), 
		.reset(reset), 
		.dout(dout)
	);
	
	initial begin
		forever begin
			#10 clk = 0;
			#10 clk = 1;
		end
	end

	initial begin
		// Initialize Inputs
		din = 0;
		we = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100 reset = 0;
        
		// Add stimulus here
		din = 10;
		#10;
		if (dout != 0) begin
			$stop;
		end;
		we = 1;
		#20;
		if (dout != 10) begin
			$stop;
		end;
		we = 0;
		din = 30;
		#20;
		if (dout != 10) begin
			$stop;
		end
		we = 1;
		reset = 1;
		#20;
		if (dout != 0) begin
			$stop;
		end
		reset = 0;
		#20;
		if (dout != 30) begin
			$stop;
		end
		$stop;
		
	end
      
endmodule

