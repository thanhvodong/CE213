module mux2to1_1bit(
	input wire x,
	input wire y,
	input wire select,
	output m
);
assign m = select ? x : y;
endmodule