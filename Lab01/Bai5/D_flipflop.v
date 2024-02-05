module D_flipflop(
	input D,Clock,
	output Q,Qnot
);
	wire Qm,nClk;
	not(nClk,Clock);
	D_latch Master(
		.d(D),.clk(nClk),
		.Qa(Qm)
	);
	D_latch Slave(
		.d(Qm),.clk(Clock),
		.Qa(Q),.Qb(Qnot)
	);
endmodule
