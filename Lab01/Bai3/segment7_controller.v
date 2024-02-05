module segment7_controller(
	input [2:0] a,b,c,d,e,
	input S2,S1,S0,
	output [6:0] out_seg
);
	wire [2:0] out_mux;
	mux5to1_3bit mux_inst (
		.U(a),.V(b),.W(c),.X(d),.Y(e),
		.s2(S2),.s1(S1),.s0(S0),
		.M(out_mux)
	);
	segment7_decoder decoder_inst(
		.C(out_mux),
		.seg(out_seg)
	);
endmodule