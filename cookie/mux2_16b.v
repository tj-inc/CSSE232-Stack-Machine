module mux2_16b(
	input [15:0] A,
	input [15:0] B,
	input control,
	output [15:0] Y
	);

reg [15:0] F0;
always @(A or B or control) begin
	case (control)
		1'b0: begin
			F0 = A;
		end
		1'b1: begin
			F0 = B;
		end
	endcase
end

assign Y = F0;
endmodule
