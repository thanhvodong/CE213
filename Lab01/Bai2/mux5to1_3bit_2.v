module mux5to1_3bit_2(
	input [2:0] U,V,W,X,Y,
	input S0,S1,S2,
	output [2:0] M
);
	mux5to1_1bit u0(
	.u(U[0]),.v(V[0]),.w(W[0]),
	.x(X[0]),.y(Y[0]),
	.s2(S2),.s1(S1),.s0(S0),
	.m(M[0])
	);
	mux5to1_1bit u1(
	.u(U[1]),.v(V[1]),.w(W[1]),
	.x(X[1]),.y(Y[1]),
	.s2(S2),.s1(S1),.s0(S0),
	.m(M[1])
	);
	mux5to1_1bit u2(
	.u(U[2]),.v(V[2]),.w(W[2]),
	.x(X[2]),.y(Y[2]),
	.s2(S2),.s1(S1),.s0(S0),
	.m(M[2])
	);
endmodule