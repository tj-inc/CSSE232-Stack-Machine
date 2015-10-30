`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:35:36 10/17/2015
// Design Name:   datamemory_block14b
// Module Name:   C:/MEGA/RHIT/CSSE232/Final Project Git/cookie/datamemory_block14b_tb.v
// Project Name:  cookie
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: datamemory_block14b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module datamemory_block14b_tb;

	// Inputs
	reg [15:0] addr;
	reg [15:0] din;
	reg wea;
	reg clk;

	// Outputs
	wire [15:0] douta;
	wire [15:0] doutb;

	// Parameters
	// Minimum period: No path found
	// Minimum input arrival time before clock: 12.578ns
	// Maximum output required time after clock: 8.537ns
	// Maximum combinational path delay: No path found
	parameter PERIOD = 24;
	parameter HALF_PERIOD = 12;

	// Instantiate the Unit Under Test (UUT)
	datamemory_block14b uut (
		.addr(addr), 
		.din(din), 
		.wea(wea), 
		.clk(clk), 
		.douta(douta), 
		.doutb(doutb)
	);
	
	initial begin
		// Use cycle period: 24 = 12 * 2
		forever begin
			#HALF_PERIOD clk = 1;
			#HALF_PERIOD clk = 0;
		end
	end

	initial begin
		// Initialize Inputs
		addr = 0;
		din = 0;
		wea = 0;

		// Wait 99 ns for global reset to finish
		#96;
        
		// Add stimulus here
		// #HALF_PERIOD;
		if ((douta != 0) || (doutb != 0)) begin
			$stop;
		end
		addr <= 1;
		wea <= 1;
		din <= 100;
		#PERIOD;
		if ((douta != 100) || (doutb != 0)) begin
			$stop;
		end
		wea <= 0;
		addr <= 2;
		din <= 1000;
		#PERIOD;
		if ((douta != 0) || (doutb != 100)) begin
			$stop;
		end
		wea <= 1;
		din <= 10000;
		#PERIOD; // Output hasn't changed yet, this cycle changes the value but that value hasn't been propagated to the output
		if ((douta != 0) || (doutb != 100)) begin
			// $stop;
		end
		#PERIOD; // Now it should output the modified value
		if ((douta != 10000) || (doutb != 100)) begin
			$stop;
		end
		addr <= 16'b0100000000000000; // Exception Once
		#PERIOD;
		addr <= 16'b1100000000000000; // Exception Twice
		#PERIOD;
		addr <= 16'b1000000000000000; // Exception Three Times
		#PERIOD;
		$stop;
		
	end
      
endmodule

