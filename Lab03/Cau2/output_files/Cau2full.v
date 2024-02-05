module Cau2full(
	input CLOCK_50,
	output R1,R2,G1,G2,Y1,Y2
);
	wire clock1s;
clock_1Hz ClockGen(.clk_50(CLOCK_50),.clk_1Hz(clock1s));
Cau2 Led(.CLOCK(clock1s),.r1(R1),.r2(R2),.g1(G1),.g2(G2),.y1(Y1),.y2(Y2));
endmodule
