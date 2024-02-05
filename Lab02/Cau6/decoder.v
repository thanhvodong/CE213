module decoder(
    input [3:0] s_bcd_l,s_bcd_h,m_bcd_l,m_bcd_h,h_bcd_l,h_bcd_h,
    output reg [6:0] HEX0,HEX1,HEX2,HEX3,HEX4,HEX5 
);
always @(*) begin
    case(s_bcd_l)
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
    case(s_bcd_h)
        4'b0000: HEX1 = 7'b1000000; 
        4'b0001: HEX1 = 7'b1111001; 
        4'b0010: HEX1 = 7'b0100100; 
        4'b0011: HEX1 = 7'b0110000; 
        4'b0100: HEX1 = 7'b0011001; 
        4'b0101: HEX1 = 7'b0010010; 
        4'b0110: HEX1 = 7'b0000010; 
        4'b0111: HEX1 = 7'b1111000; 
        4'b1000: HEX1 = 7'b0000000; 
        4'b1001: HEX1 = 7'b0010000;
        default: HEX1 = 7'b1111111;
    endcase
end
always @(*) begin
    case(m_bcd_l)
        4'b0000: HEX2 = 7'b1000000; 
        4'b0001: HEX2 = 7'b1111001; 
        4'b0010: HEX2 = 7'b0100100; 
        4'b0011: HEX2 = 7'b0110000; 
        4'b0100: HEX2 = 7'b0011001; 
        4'b0101: HEX2 = 7'b0010010; 
        4'b0110: HEX2 = 7'b0000010; 
        4'b0111: HEX2 = 7'b1111000; 
        4'b1000: HEX2 = 7'b0000000; 
        4'b1001: HEX2 = 7'b0010000;
        default: HEX2 = 7'b1111111;
    endcase
end
always @(*) begin
    case(m_bcd_h)
        4'b0000: HEX3 = 7'b1000000; 
        4'b0001: HEX3 = 7'b1111001; 
        4'b0010: HEX3 = 7'b0100100; 
        4'b0011: HEX3 = 7'b0110000; 
        4'b0100: HEX3 = 7'b0011001; 
        4'b0101: HEX3 = 7'b0010010; 
        4'b0110: HEX3 = 7'b0000010; 
        4'b0111: HEX3 = 7'b1111000; 
        4'b1000: HEX3 = 7'b0000000; 
        4'b1001: HEX3 = 7'b0010000;
        default: HEX3 = 7'b1111111;
    endcase
end
always @(*) begin
    case(h_bcd_l)
        4'b0000: HEX4 = 7'b1000000; 
        4'b0001: HEX4 = 7'b1111001; 
        4'b0010: HEX4 = 7'b0100100; 
        4'b0011: HEX4 = 7'b0110000; 
        4'b0100: HEX4 = 7'b0011001; 
        4'b0101: HEX4 = 7'b0010010; 
        4'b0110: HEX4 = 7'b0000010; 
        4'b0111: HEX4 = 7'b1111000; 
        4'b1000: HEX4 = 7'b0000000; 
        4'b1001: HEX4 = 7'b0010000;
        default: HEX4 = 7'b1111111;
    endcase
end
always @(*) begin
    case(h_bcd_h)
        4'b0000: HEX5 = 7'b1000000; 
        4'b0001: HEX5 = 7'b1111001; 
        4'b0010: HEX5 = 7'b0100100; 
        4'b0011: HEX5 = 7'b0110000; 
        4'b0100: HEX5 = 7'b0011001; 
        4'b0101: HEX5 = 7'b0010010; 
        4'b0110: HEX5 = 7'b0000010; 
        4'b0111: HEX5 = 7'b1111000; 
        4'b1000: HEX5 = 7'b0000000; 
        4'b1001: HEX5 = 7'b0010000;
        default: HEX5 = 7'b1111111;
    endcase
end
endmodule
