`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:25:56 10/26/2015
// Design Name:   mux2_16b
// Module Name:   C:/Users/sullivpc/Desktop/232/XilinxProject/cookie/mux2_16b_tb.v
// Project Name:  cookie
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2_16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux2_16b_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg control;

	// Outputs
	wire [15:0] Y;

	// Test values
	reg [15:0] expected;
	integer error_count;
	integer counter;
	
	// Instantiate the Unit Under Test (UUT)
	mux2_16b uut (
		.A(A), 
		.B(B), 
		.control(control), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		control = 0;
		counter = 0;
		expected = 0;
		error_count = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Loop through control signals 0 through 7.
		for (counter = 0; counter < 2; counter = counter + 1) begin
		
			// Loop through different input values.
			for (A = 0; A < 2; A = A + 1) begin
			for (B = 2; B < 4; B = B + 1) begin
			
				#1;
				control = counter;
				#1;
				case (control)
					0: begin expected = A; end
					1: begin expected = B; end
				endcase

				#1;
				if (Y == expected)
					$display("Okay.");
				else begin
					error_count = error_count + 1;
					$display("Error.");
				end
			
			end  // B loop
			end  // A loop
			
		end  // control loop
		$display("Error count: %d", error_count);

	end
      
endmodule

