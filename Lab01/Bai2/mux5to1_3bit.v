module mux5to1_3bit(
	input [2:0] U,V,W,X,Y,
	input s0,s1,s2,
	output [2:0] M
);
assign M = (s2 == 1'b0 && s1 == 1'b0 && s0 == 1'b0) ? U :
				(s2 == 1'b0 && s1 == 1'b0 && s0 == 1'b1) ? V :
				(s2 == 1'b0 && s1 == 1'b1 && s0 == 1'b0) ? W :
				(s2 == 1'b0 && s1 == 1'b1 && s0 == 1'b1) ? X :
																		 Y ;
endmodule
