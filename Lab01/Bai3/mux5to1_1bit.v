module mux5to1_1bit(
	input u,v,w,x,y,
	input s0,s1,s2,
	output m
);
	wire uv,wx,uvmx;
	mux2to1_1bit u1 (u,v,s0,uv);
	mux2to1_1bit u2 (w,x,s0,wx);
	mux2to1_1bit u3 (uv,wx,s1,uvmx);
	mux2to1_1bit u4 (uvmx,y,s2,m);
endmodule