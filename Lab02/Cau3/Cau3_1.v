module Cau3_1(
	input CLK,RST,
	output [6:0] HEX
); 
	wire [3:0] BCD;
	Counter_BCD Counter(.clk(CLK),.rst(RST),.bcd(BCD));
	bcd_to_led7 Decoder(.bcd(BCD),.seg(HEX));
endmodule
	
	
