module clock_1Hz (seconds,CLK,reset);

output reg seconds;
input CLK, reset; 
reg [26:0] count;

always @(posedge CLK or posedge reset)
begin
    if(reset) begin
        count   <= 0;
        seconds <= 0;
    end else if (count == 27'd50_000_000) begin 
        count   <= 0;
        seconds <= ~seconds;
    end else begin
        count   <= count + 1'b1;    
    end 
end

endmodule