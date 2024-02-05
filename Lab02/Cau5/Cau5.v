module Cau5(
	input wire CLOCK_50HZ, RESET,
	output [6:0] hex0,hex1
);
wire clk_1s, BCD_H, BCD_L;
clock_1Hz CLOCK(.clk_50(CLOCK_50HZ),.clk_1Hz(clk_1s));
counter COUNTER(.reset(RESET),.clk1Hz(clk_1s),.bcd_high(BCD_H),.bcd_low(BCD_L));
decoder DECODER(.bcd_h(BCD_H),.bcd_l(BCD_L),.HEX0(hex0),.HEX1(hex1));
endmodule
