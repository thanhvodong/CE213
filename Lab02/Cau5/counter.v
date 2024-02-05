module counter(
    input wire reset,    
    input wire clk1Hz,   
    output reg [4:0] count, 
    output reg [3:0] bcd_high, 
    output reg [3:0] bcd_low   
);

always @(posedge clk1Hz or posedge reset) 
begin
	if(reset)
		count <= 0;
	else if (count == 20)
		count <= 0;
	else
		count <= count + 1;
		bcd_low <= count % 10;
      bcd_high <= count / 10;
end
endmodule
