`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:20:24 10/25/2015
// Design Name:   alu16b
// Module Name:   C:/MEGA/RHIT/CSSE232/Final Project/XilinxProject/cookie/alu16b_tb.v
// Project Name:  cookie
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu16b_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg [3:0] ALUop;

	// Outputs
	wire [15:0] S;
	wire IsZero;
	wire OFL;
	
	// Parameters
	parameter TEST_CYCLE = 3;

	// Instantiate the Unit Under Test (UUT)
	alu16b uut (
		.A(A), 
		.B(B), 
		.ALUop(ALUop), 
		.S(S), 
		.IsZero(IsZero), 
		.OFL(OFL)
	);

	initial begin
		// Initialize Inputs
		A <= 0;
		B <= 0;
		ALUop <= 4'd0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		// Addition
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 1;
		B <= 0;
		#TEST_CYCLE;
		if (S != 1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 0;
		B <= 1;
		#TEST_CYCLE;
		if (S != 1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'd500;
		B <= 16'd600;
		#TEST_CYCLE;
		if (S != 16'd1100 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'd7000;
		B <= -16'd7000;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= -16'd100;
		B <= 16'd300;
		#TEST_CYCLE;
		if (S != 16'd200 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= -16'd12345;
		B <= 16'd12345;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 16'd32767;
		B <= 16'd1;
		#TEST_CYCLE;
		if (S != -16'd32768 | IsZero != 0 | OFL != 1) begin
			$stop;
		end
		A <= 16'd3;
		B <= 16'd32767;
		#TEST_CYCLE;
		if (S != -16'd32766 | IsZero != 0 | OFL != 1) begin
			$stop;
		end
		A <= -16'd30000;
		B <= -16'd2769;
		#TEST_CYCLE;
		if (S != 16'd32767 | IsZero != 0 | OFL != 1) begin
			$stop;
		end
		A <= -16'd32767;
		B <= -16'd3;
		#TEST_CYCLE;
		if (S != 32766 | IsZero != 0 | OFL != 1) begin
			$stop;
		end
		A <= 16'd32767;
		B <= -16'd32767;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		
		// Reset before next set
		A <= 0;
		B <= 0;
		ALUop <= 4'd1;
		#TEST_CYCLE;
		// Subtraction
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 1;
		B <= 0;
		#TEST_CYCLE;
		if (S != 1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 0;
		B <= 1;
		#TEST_CYCLE;
		if (S != -16'd1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'd500;
		B <= 16'd600;
		#TEST_CYCLE;
		if (S != -16'd100 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'd7000;
		B <= 16'd7000;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= -16'd100;
		B <= 16'd300;
		#TEST_CYCLE;
		if (S != -16'd400 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'd12345;
		B <= 16'd12345;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 16'd32767;
		B <= -16'd1;
		#TEST_CYCLE;
		if (S != -16'd32768 | IsZero != 0 | OFL != 1) begin
			$stop;
		end
		A <= 16'd3;
		B <= 16'd32767;
		#TEST_CYCLE;
		if (S != -16'd32764 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= -16'd30000;
		B <= 16'd2769;
		#TEST_CYCLE;
		if (S != 16'd32767 | IsZero != 0 | OFL != 1) begin
			$stop;
		end
		A <= -16'd32767;
		B <= 16'd3;
		#TEST_CYCLE;
		if (S != 16'd32766 | IsZero != 0 | OFL != 1) begin
			$stop;
		end
		A <= 16'd32767;
		B <= 16'd32767;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		
		// Reset before next set
		A <= 0;
		B <= 0;
		ALUop <= 4'd2;
		#TEST_CYCLE;
		// Shift Left Logical
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 1;
		B <= 0;
		#TEST_CYCLE;
		if (S != 1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 0;
		B <= 1;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 16'b110;
		B <= 16'd1;
		#TEST_CYCLE;
		if (S != 16'b1100 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'hFFFF;
		B <= 16'd1;
		#TEST_CYCLE;
		if (S != 16'hFFFE | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'b100000000000000;
		B <= 16'd2;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		
		// Reset before next set
		A <= 0;
		B <= 0;
		ALUop <= 4'd3;
		#TEST_CYCLE;
		// Shift Right Logical
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 1;
		B <= 0;
		#TEST_CYCLE;
		if (S != 1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 0;
		B <= 1;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 16'b110;
		B <= 16'd1;
		#TEST_CYCLE;
		if (S != 16'b11 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'hFFFF;
		B <= 16'd1;
		#TEST_CYCLE;
		if (S != 16'h7FFF | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'b000000001111000;
		B <= 16'd7;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end

		// Reset before next set
		A <= 0;
		B <= 0;
		ALUop <= 4'd4;
		#TEST_CYCLE;
		// Bitwise And
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 1;
		B <= 0;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 0;
		B <= 1;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 16'b110;
		B <= 16'b1;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 16'hFFFF;
		B <= 16'b1111;
		#TEST_CYCLE;
		if (S != 16'b1111 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'b0011000011110000;
		B <= 16'b1111100000011100;
		#TEST_CYCLE;
		if (S != 16'b0011000000010000 | IsZero != 0 | OFL != 0) begin
			$stop;
		end

		// Reset before next set
		A <= 0;
		B <= 0;
		ALUop <= 4'd5;
		#TEST_CYCLE;
		// Bitwise Or
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 1;
		B <= 0;
		#TEST_CYCLE;
		if (S != 1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 0;
		B <= 1;
		#TEST_CYCLE;
		if (S != 1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'b110;
		B <= 16'b1;
		#TEST_CYCLE;
		if (S != 16'b111 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'hFFFF;
		B <= 16'b1111;
		#TEST_CYCLE;
		if (S != 16'hFFFF | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'b0011000011110000;
		B <= 16'b1111100000011100;
		#TEST_CYCLE;
		if (S != 16'b1111100011111100 | IsZero != 0 | OFL != 0) begin
			$stop;
		end

		// Reset before next set
		A <= 0;
		B <= 0;
		ALUop <= 4'd6;
		#TEST_CYCLE;
		// Bitwise Xor
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 1;
		B <= 0;
		#TEST_CYCLE;
		if (S != 1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 1;
		B <= 1;
		#TEST_CYCLE;
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 16'b110;
		B <= 16'b11;
		#TEST_CYCLE;
		if (S != 16'b101 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'hFFFF;
		B <= 16'b1111;
		#TEST_CYCLE;
		if (S != 16'hFFF0 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'b0011000011110000;
		B <= 16'b1111100000011100;
		#TEST_CYCLE;
		if (S != 16'b1100100011101100 | IsZero != 0 | OFL != 0) begin
			$stop;
		end

		// Reset before next set
		A <= 0;
		B <= 0;
		ALUop <= 4'd7;
		#TEST_CYCLE;
		// Bitwise Not
		if (S != 16'hFFFF | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 1;
		B <= 0;
		#TEST_CYCLE;
		if (S != 16'b1111111111111110 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 1;
		B <= 1;
		#TEST_CYCLE;
		if (S != 16'b1111111111111110 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'b110;
		B <= 16'b11;
		#TEST_CYCLE;
		if (S != 16'b1111111111111001 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'hFFFF;
		B <= 16'b1111;
		#TEST_CYCLE;
		if (S != 16'h0000 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 16'b0011000011110000;
		B <= 16'b1111100000011100;
		#TEST_CYCLE;
		if (S != 16'b1100111100001111 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		
		// Reset before next set
		A <= 0;
		B <= 0;
		ALUop <= 4'd9;
		#TEST_CYCLE;
		// Negation
		if (S != 0 | IsZero != 1 | OFL != 0) begin
			$stop;
		end
		A <= 16'd1;
		B <= 0;
		#TEST_CYCLE;
		if (S != -16'd1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'd1;
		B <= 100;
		#TEST_CYCLE;
		if (S != -16'd1 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'd500;
		B <= 16'd600;
		#TEST_CYCLE;
		if (S != -16'd500 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= 16'd7000;
		B <= 16'd7000;
		#TEST_CYCLE;
		if (S != -16'd7000 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		A <= -16'd7000;
		B <= 16'd300;
		#TEST_CYCLE;
		if (S != 16'd7000 | IsZero != 0 | OFL != 0) begin
			$stop;
		end
		$stop;
		
	end
      
endmodule

