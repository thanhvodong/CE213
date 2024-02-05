`timescale 1ns / 1ps

module reg_file (
    input clk,rst,
    input [4:0] ReadAddress1, 
    input [4:0] ReadAddress2,
    input [4:0] WriteAddress, 
    input [31:0] WriteData,
    input RWE,
    output  [31:0] ReadData1,
    output  [31:0] ReadData2
    );
    reg [31:0] mem [0:31];
    integer i;
    always @(posedge clk or negedge rst) begin
        if (~rst) begin
            for (i=0;i<32;i=i+1) begin
                mem[i] <= 0;
            end
        end
        else begin
            if (RWE) mem[WriteAddress] <= WriteData;
        end

     end
     assign ReadData1 = mem[ReadAddress1];
     assign ReadData2 = mem[ReadAddress2];
endmodule
