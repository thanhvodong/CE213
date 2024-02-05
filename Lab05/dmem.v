`timescale 1ns / 1ps

module dmem(
    input clk, rst,
    input [31:0] address, DataW,
    input MemRW,
    output [31:0] DataR
    );
    integer i;
    reg [31:0] mem  [0:63];

    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            for (i=0;i<64;i=i+1) begin
                mem[i] = 32'b0;
            end
        end
        else begin
            if (MemRW) mem[address] <= DataW;
        end
    end
    assign DataR = mem[address];
endmodule
