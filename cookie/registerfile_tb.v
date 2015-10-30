`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:32:11 10/25/2015
// Design Name:   registerfile
// Module Name:   C:/MEGA/RHIT/CSSE232/Final Project/XilinxProject/cookie/registerfile_tb.v
// Project Name:  cookie
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerfile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module registerfile_tb;

	// Inputs
	reg [3:0] addr;
	reg [15:0] din;
	reg we;
	reg reset;
	reg clk;
	reg [15:0] ra_din;
	reg ra_we;

	// Outputs
	wire [15:0] dout;
	wire [15:0] ra_dout;
	
	// Parameters
	parameter PERIOD = 24;
	parameter HALF_PERIOD = 12;

	// Instantiate the Unit Under Test (UUT)
	registerfile uut (
		.addr(addr), 
		.din(din), 
		.we(we), 
		.reset(reset), 
		.clk(clk), 
		.ra_din(ra_din), 
		.ra_we(ra_we), 
		.dout(dout), 
		.ra_dout(ra_dout)
	);
	
	initial begin
		forever begin
			#HALF_PERIOD clk = 1;
			#HALF_PERIOD clk = 0;
		end
	end

	initial begin
		// Initialize Inputs
		addr = 0;
		din = 0;
		we = 0;
		reset = 1;
		clk = 0;
		ra_din = 0;
		ra_we = 0;

		// Wait 96 ns for global reset to finish
		#96 reset = 0;
        
		// Add stimulus here
		// Regular read and writes
		if (dout != 0 | ra_dout != 0) begin
			$stop;
		end
		we <= 1;
		din <= 1;
		#PERIOD;
		if (dout != 1) begin
			$stop;
		end
		we <= 0;
		din <= 50;
		#PERIOD;
		if (dout != 1) begin
			$stop;
		end
		addr <= 2;
		we <= 1;
		din <= 2;
		#PERIOD;
		if (dout != 2) begin
			$stop;
		end
		we <= 0;
		din <= 50;
		#PERIOD;
		if (dout != 2) begin
			$stop;
		end
		addr <= 3;
		we <= 1;
		din <= 3;
		#PERIOD;
		if (dout != 3) begin
			$stop;
		end
		we <= 0;
		din <= 50;
		#PERIOD;
		if (dout != 3) begin
			$stop;
		end
		addr <= 4;
		we <= 1;
		din <= 4;
		#PERIOD;
		if (dout != 4) begin
			$stop;
		end
		we <= 0;
		din <= 50;
		#PERIOD;
		if (dout != 4) begin
			$stop;
		end
		addr <= 5;
		we <= 1;
		din <= 5;
		#PERIOD;
		if (dout != 5) begin
			$stop;
		end
		we <= 0;
		din <= 50;
		#PERIOD;
		if (dout != 5) begin
			$stop;
		end
		addr <= 6;
		we <= 1;
		din <= 6;
		#PERIOD;
		if (dout != 6) begin
			$stop;
		end
		we <= 0;
		din <= 50;
		#PERIOD;
		if (dout != 6) begin
			$stop;
		end
		addr <= 7;
		we <= 1;
		din <= 7;
		#PERIOD;
		if (dout != 7) begin
			$stop;
		end
		we <= 0;
		din <= 50;
		#PERIOD;
		if (dout != 7) begin
			$stop;
		end
		addr <= 8;
		we <= 1;
		din <= 8;
		#PERIOD;
		if (dout != 8) begin
			$stop;
		end
		we <= 0;
		din <= 50;
		#PERIOD;
		if (dout != 8) begin
			$stop;
		end
		addr <= 9;
		we <= 1;
		din <= 9;
		#PERIOD;
		if (dout != 9) begin
			$stop;
		end
		we <= 0;
		din <= 50;
		#PERIOD;
		if (dout != 9) begin
			$stop;
		end
		
		// Reset before testing RA
		addr <= 0;
		din <= 0;
		we <= 0;
		reset <= 1;
		clk <= 0;
		ra_din <= 0;
		ra_we <= 0;
		#PERIOD;
		if (dout != 0 | ra_dout != 0) begin
			$stop;
		end
		ra_we <= 1;
		ra_din <= 1;
		#PERIOD;
		if (dout != 0 | ra_dout != 1) begin
			$stop;
		end
		ra_we <= 0;
		ra_din <= 100;
		we <= 1;
		din <= 200;
		#PERIOD
		if (ra_dout != 200) begin
			$stop;
		end

	end
      
endmodule

