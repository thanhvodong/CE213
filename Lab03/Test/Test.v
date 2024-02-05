module Test (
    input wire clk_50,
    output reg clk_1Hz
);

reg [24:0] count;  
parameter DIVIDER = 25000000;  

always @ (posedge clk_50) 
begin
    if (count == DIVIDER - 1) 
	 begin
        count <= 0;
        clk_1Hz <= ~clk_1Hz;
    end 
	 else begin
        count <= count + 1;
    end
end

endmodule
