`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:29:15 10/27/2015
// Design Name:   sign_ext_11b_16b
// Module Name:   C:/Users/sullivpc/Desktop/232/XilinxProject/cookie/sign_ext_11b_16b_tb.v
// Project Name:  cookie
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sign_ext_11b_16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sign_ext_11b_16b_tb;

	// Inputs
	reg [10:0] in;

	// Outputs
	wire [15:0] out;
	
	// Test values
	reg [4:0] expected;
	integer counter;
	integer error_count;

	// Instantiate the Unit Under Test (UUT)
	sign_ext_11b_16b uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		counter = 0;
		expected = 5'b00000;  // The expected 5 most significant bits.
		error_count = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for (counter = 0; counter < 2**11; counter = counter + 1) begin
			
			#1
			in = counter[10:0];
			
			#1;
			case (in[10])
				0: begin 
					expected = 5'b00000; 
				end
				1: begin 
					expected = 5'b11111; 
				end
			endcase

			#1;
			if (out[15:11] == expected && out[10:0] == in)
				$display("Okay.");
			else begin
				error_count = error_count + 1;
				$display("Error.");
			end
			
		end 

		$display("Error count: %d", error_count);
	end
      
endmodule

