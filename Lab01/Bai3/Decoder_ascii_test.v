module Decoder_ascii_test(
	input [2:0] C,
	output[6:0] seg
);
assign seg = (C == 3'b000 ) ? 7'b1001000:
					(C == 3'b001 ) ? 7'b1000101:
					(C == 3'b010 ) ? 7'b1001100:
					(C == 3'b011 ) ? 7'b1001100:
					(C == 3'b100 ) ? 7'b1001111:
										  7'b0000000;
endmodule