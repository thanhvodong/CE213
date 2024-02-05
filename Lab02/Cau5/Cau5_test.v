module Cau5_test(
	input wire CLOCK_50HZ, RESET,
	output [6:0] hex0,hex1,
	output [4:0] COUNT
);
wire [3:0] high,low;

counter COUNTER(.reset(RESET),.clk1Hz(CLOCK_50HZ),.bcd_high(high),.bcd_low(low),.count(COUNT));
decoder DECODER(.bcd_h(high),.bcd_l(low),.HEX0(hex0),.HEX1(hex1));
endmodule
