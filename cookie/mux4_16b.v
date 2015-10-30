module mux4_16b(
	input [15:0] A,
	input [15:0] B,
	input [15:0] C,
	input [15:0] D,
	input [1:0] control,
	output [15:0] Y
	);

reg [15:0] F0;
always @(A or B or C or D or control) begin
	case (control)
		2'b00: begin
			F0 = A;
		end
		2'b01: begin
			F0 = B;
		end
		2'b10: begin
			F0 = C;
		end
		2'b11: begin
			F0 = D;
		end
	endcase
end

assign Y = F0;
endmodule
