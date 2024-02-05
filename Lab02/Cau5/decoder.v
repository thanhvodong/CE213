module decoder(
    input [3:0] bcd_l,
    input [3:0] bcd_h,
    output reg [6:0] HEX0, 
    output reg [6:0] HEX1  
);
always @(*) begin
    case(bcd_l)
        4'b0000: HEX0 = 7'b1000000; 
        4'b0001: HEX0 = 7'b1111001; 
        4'b0010: HEX0 = 7'b0100100; 
        4'b0011: HEX0 = 7'b0110000; 
        4'b0100: HEX0 = 7'b0011001; 
        4'b0101: HEX0 = 7'b0010010; 
        4'b0110: HEX0 = 7'b0000010; 
        4'b0111: HEX0 = 7'b1111000; 
        4'b1000: HEX0 = 7'b0000000; 
        4'b1001: HEX0 = 7'b0010000;
        default: HEX0 = 7'b1111111;
    endcase
end
always @(*) begin
    case(bcd_h)
        4'b0000: HEX1 = 7'b1000000; 
        4'b0001: HEX1 = 7'b1111001;  
		  4'b0010: HEX1 = 7'b0100100;
        default: HEX1 = 7'b1111111; 
    endcase
end

endmodule
