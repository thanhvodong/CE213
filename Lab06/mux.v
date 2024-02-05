`timescale 1ns / 1ps
//s == 0 -> c = a
//s == 1 -> c = b
module mux (
    input [31:0] a,b,
    input s,
    output  [31:0] c
);
    assign c = (s == 0) ? a:b;
endmodule
