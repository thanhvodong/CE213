`timescale 1ns / 1ps

module reg_file (
  input clk,rst,
    input [4:0] A1, //read address 1
    input [4:0] A2, //read address 2
    input [4:0] A3, //write address
    input [31:0] WD3,
    input WE3,
    output  [31:0] RD1,
    output  [31:0] RD2
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
            if (WE3) mem[A3] <= WD3;
        end

     end
     assign RD1 = mem[A1];
     assign RD2 = mem[A2];
endmodule
