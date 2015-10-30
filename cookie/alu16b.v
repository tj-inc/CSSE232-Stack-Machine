`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:36:42 10/25/2015 
// Design Name: 
// Module Name:    alu16b 
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
module alu16b(
    input signed [15:0] A,
    input signed [15:0] B,
    input [3:0] ALUop,
    output reg signed [15:0] S,
    output IsZero,
    output OFL
    );
	 
	 reg canOverflow;
	 reg isSubtraction;

	 always @(A or B or ALUop) begin
		case (ALUop)
			4'b0000: begin
				S <= A + B;
			end
			4'b0001: begin
				S <= A - B;
			end
			4'b0010: begin
				S <= A << B;
			end
			4'b0011: begin
				S <= A >> B;
			end
			4'b0100: begin
				S <= A & B;
			end
			4'b0101: begin
				S <= A | B;
			end
			4'b0110: begin
				S <= A ^ B;
			end
			4'b0111: begin
				S <= ~A;
			end
			//4'b1000: begin
				//S <= A * B;
				//S <= 1;
			//end
			4'b1001: begin
				S <= -A;
			end
			default: begin
				S <= -1;
			end
		endcase
	 end
	 
	 always @(ALUop) begin
		case (ALUop)
			4'b0000, 4'b0001: canOverflow <= 1;
			default: canOverflow <= 0;
		endcase
	 end
	 
	 always @(ALUop) begin
		case (ALUop)
			4'b0001: isSubtraction <= 1;
			default: isSubtraction <= 0;
		endcase
	 end
	 
	 assign IsZero = (S == 0);
	 assign OFL = canOverflow & ((~A[15] & (isSubtraction ~^ B[15]) & S[15]) | (A[15] & (isSubtraction^B[15]) & ~S[15]));

endmodule