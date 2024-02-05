module four_bit_counter(
	input clk, clr, en,
	output [3:0] count
);
   wire t1, t2, t3;
	
    // T Flip-Flop instances
	t_flipflop T3(.Q(count[3]),.E(en),.C(clk),.CLR(clr));
	and AND3(t3,en,count[3]);
	t_flipflop T2(.Q(count[2]),.E(t3),.C(clk),.CLR(clr));
	and AND2(t2,t3,count[2]);
	t_flipflop T1(.Q(count[1]),.E(t2),.C(clk),.CLR(clr));
	and AND1(t1,t2,count[1]);
	t_flipflop T0(.Q(count[0]),.E(t1),.C(clk),.CLR(clr));	 
endmodule
