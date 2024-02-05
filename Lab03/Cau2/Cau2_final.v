module Cau2_final(
	input clk,
	output R1,R2,G1,G2,Y1,Y2
);
	wire s;
clock_1Hz Clock_gen(.CLK(clk),.seconds(s));
Cau2 FSM(.CLOCK(s),.r1(R1),.r2(R2),.g1(G1),.g2(G2),.y1(Y1),.y2(Y2));
endmodule