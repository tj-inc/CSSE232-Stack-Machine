module mux8_16b(
	input [15:0] A,
	input [15:0] B,
	input [15:0] C,
	input [15:0] D,
	input [15:0] E,
	input [15:0] F,
	input [15:0] G,
	input [15:0] H,
	input [2:0] control,
	output [15:0] Y
	);

reg [15:0] F0;
always @(A or B or C or D or E or F or G or H or control) begin
	case (control)
		3'b000: begin
			F0 = A;
		end
		3'b001: begin
			F0 = B;
		end
		3'b010: begin
			F0 = C;
		end
		3'b011: begin
			F0 = D;
		end
		3'b100: begin
			F0 = E;
		end
		3'b101: begin
			F0 = F;
		end
		3'b110: begin
			F0 = G;
		end
		3'b111: begin
			F0 = H;
		end
	endcase
end

assign Y = F0;
endmodule
