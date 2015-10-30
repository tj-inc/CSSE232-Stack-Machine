`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:18:22 10/26/2015
// Design Name:   mux4_16b
// Module Name:   C:/Users/sullivpc/Desktop/232/XilinxProject/cookie/mux4_16b_tb.v
// Project Name:  cookie
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4_16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4_16b_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [15:0] C;
	reg [15:0] D;
	reg [1:0] control;

	// Outputs
	wire [15:0] Y;

	// Test values
	reg [15:0] expected;
	integer error_count;
	integer counter;
	
	// Instantiate the Unit Under Test (UUT)
	mux4_16b uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.control(control), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		control = 0;
		counter = 0;
		expected = 0;
		error_count = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Loop through control signals 0 through 7.
		for (counter = 0; counter < 4; counter = counter + 1) begin
		
			// Loop through different input values.
			for (A = 0; A < 2; A = A + 1) begin
			for (B = 2; B < 4; B = B + 1) begin
			for (C = 4; C < 6; C = C + 1) begin
			for (D = 6; D < 8; D = D + 1) begin
			
				#1;
				control = counter;
				#1;
				case (control)
					0: begin expected = A; end
					1: begin expected = B; end
					2: begin expected = C; end
					3: begin expected = D; end
				endcase

				#1;
				if (Y == expected)
					$display("Okay.");
				else begin
					error_count = error_count + 1;
					$display("Error.");
				end
			
			end  // D loop
			end  // C loop
			end  // B loop
			end  // A loop
			
		end  // control loop
		$display("Error count: %d", error_count);

	end
      
endmodule

