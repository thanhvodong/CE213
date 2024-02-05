module Counter_BCD(
	input wire clk, rst, 
	output reg [3:0] bcd
	);
    reg [3:0] count;
    always @ (posedge clk or posedge rst)
    begin
        if (rst)
            count <= 4'b0000;
        else if (count == 4'b1001)
            count <= 4'b0000;
        else
            count <= count + 1;
    end
    always @ (posedge clk or posedge rst)
    begin
        if (rst)
            bcd <= 4'b0000;
        else
        begin
            case (count)
                4'b0000: bcd <= 4'b0000;
                4'b0001: bcd <= 4'b0001;
                4'b0010: bcd <= 4'b0010;
                4'b0011: bcd <= 4'b0011;
                4'b0100: bcd <= 4'b0100;
                4'b0101: bcd <= 4'b0101;
                4'b0110: bcd <= 4'b0110;
                4'b0111: bcd <= 4'b0111;
                4'b1000: bcd <= 4'b1000;
                4'b1001: bcd <= 4'b1001;
                default: bcd <= 4'b0000;
            endcase
        end
    end
endmodule
