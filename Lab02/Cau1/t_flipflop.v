module t_flipflop(
	input E, C, CLR,
	output reg Q
	);
    always @(posedge C or negedge CLR)
    begin
        if (CLR == 0)      // clear = 0
            Q <= 1'b0;
        else if (E == 0)   // enable = 0
            Q <= Q;
        else if (C)        // enable = 1, clock = rising edge
            Q <= ~Q;       // Q+ = Qnot
    end
endmodule
