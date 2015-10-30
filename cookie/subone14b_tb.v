`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:52:41 10/19/2015
// Design Name:   subone14b
// Module Name:   C:/MEGA/RHIT/CSSE232/Final Project Git/cookie/subone14b_tb.v
// Project Name:  cookie
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: subone14b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module subone14b_tb;

	// Inputs
	reg [13:0] a;

	// Outputs
	wire [13:0] s;

	// Parameters
	parameter TEST_INTERVAL = 10;

	// Instantiate the Unit Under Test (UUT)
	subone14b uut (
		.a(a), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		if (s != -14'd1) begin // Why -1 doesn't work here?14'b11111111111111
			$stop;
		end
		a = 14'b11111111111111;
		#TEST_INTERVAL;
		if (s != 14'b11111111111110) begin
			$stop;
		end
		a = 14'b01111111111111;
		#TEST_INTERVAL;
		if (s != 14'b01111111111110) begin
			$stop;
		end
		a = 14'b01000000000000;
		#TEST_INTERVAL;
		if (s != 14'b00111111111111) begin
			$stop;
		end
		a = 14'b00100000000000;
		#TEST_INTERVAL;
		if (s != 14'b00011111111111) begin
			$stop;
		end
		a = 14'b00010000000000;
		#TEST_INTERVAL;
		if (s != 14'b00001111111111) begin
			$stop;
		end
		a = 14'b00000100000000;
		#TEST_INTERVAL;
		if (s != 14'b00000011111111) begin
			$stop;
		end
		a = 14'b00000001000000;
		#TEST_INTERVAL;
		if (s != 14'b00000000111111) begin
			$stop;
		end
		a = 14'b00000000010000;
		#TEST_INTERVAL;
		if (s != 14'b00000000001111) begin
			$stop;
		end
		a = 14'b00000000001000;
		#TEST_INTERVAL;
		if (s != 14'b00000000000111) begin
			$stop;
		end
		a = 14'b00000000000010;
		#TEST_INTERVAL;
		if (s != 14'b00000000000001) begin
			$stop;
		end
		a = 1;
		#TEST_INTERVAL;
		if (s != 0) begin
			$stop;
		end
		$stop;

	end
      
endmodule

