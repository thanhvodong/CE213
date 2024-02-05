module Counter4Bit(
    input wire clk,
    input wire enable,
    input wire clear,
    output reg [3:0] count
);

    always @(posedge clk or posedge clear)
    begin
        if (clear)
            count <= 4'b0000;
        else if (enable)
            count <= count + 1;
    end

endmodule