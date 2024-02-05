module D_latch(
	input d,clk,
	output Qa,Qb
);
	wire R,S_g,R_g;
	not(R, d);   
	nand(S_g, clk, d);
	nand(R_g, clk, R);   
	nand(Qb, R_g, Qa);
	nand(Qa, S_g, Qb);
endmodule