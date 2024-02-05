module Cau3_2(
	input CLOCK_50,reset_n,
	output [7:0] HEX0
);
	wire clock_1s;
	wire [3:0] bcd4;
	clock_divider Clock_1s(.clk_50(CLOCK_50),.clk_1Hz(clock_1s));
	Counter_BCD COUNTER(.clk(clock_1s),.rst(reset_n),.bcd(bcd4));
	bcd_to_led7 DECODER(.bcd(bcd4),.seg(HEX0));
endmodule