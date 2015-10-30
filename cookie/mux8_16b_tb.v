`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:24:48 10/26/2015
// Design Name:   mux8_16b
// Module Name:   C:/Users/sullivpc/Desktop/232/XilinxProject/cookie/mux8_16b_tb.v
// Project Name:  cookie
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux8_16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux8_16b_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [15:0] C;
	reg [15:0] D;
	reg [15:0] E;
	reg [15:0] F;
	reg [15:0] G;
	reg [15:0] H;
	reg [2:0] control;

	// Outputs
	wire [15:0] Y;
	
	// Test values
	reg [15:0] expected;
	integer error_count;
	integer counter;

	// Instantiate the Unit Under Test (UUT)
	mux8_16b uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.E(E), 
		.F(F), 
		.G(G), 
		.H(H), 
		.control(control), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;
		D = 0;
		E = 0;
		F = 0;
		G = 0;
		H = 0;
		control = 0;
		counter = 0;
		expected = 0;
		error_count = 0;

		// Wait 100ns for simulator to finish initializing.
		#100;

		// Loop through control signals 0 through 7.
		for (counter = 0; counter < 8; counter = counter + 1) begin
		
			// Loop through different input values.
			for (A = 0; A < 2; A = A + 1) begin
			for (B = 2; B < 4; B = B + 1) begin
			for (C = 4; C < 6; C = C + 1) begin
			for (D = 6; D < 8; D = D + 1) begin
			for (E = 8; E < 10; E = E + 1) begin
			for (F = 10; F < 12; F = F + 1) begin
			for (G = 12; G < 14; G = G + 1) begin
			for (H = 14; H < 16; H = H + 1) begin
			
				#1;
				control = counter;
				#1;
				case (control)
					0: begin expected = A; end
					1: begin expected = B; end
					2: begin expected = C; end
					3: begin expected = D; end
					4: begin expected = E; end
					5: begin expected = F; end
					6: begin expected = G; end
					7: begin expected = H; end
				endcase

				#1;
				if (Y == expected)
					$display("Okay.");
				else begin
					error_count = error_count + 1;
					$display("Error.");
				end
			
			end  // H loop
			end  // G loop
			end  // F loop
			end  // E loop
			end  // D loop
			end  // C loop
			end  // B loop
			end  // A loop
			
		end  // control loop
		$display("Error count: %d", error_count);

	end
      
endmodule