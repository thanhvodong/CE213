`timescale 1ns / 1ps

module alu(input [31:0] a, input [31:0] b, input [2:0] f, output reg [31:0] out, output is0);
    always @(a, b,f)
        begin
        if (f == 3'b000)        // Complement A
            out = ~a;
        else if( f == 3'b001)   // And
            out = a & b;
        else if( f == 3'b010)   // Xor
            out = a ^ b;
        else if (f == 3'b011)   // Or
            out = a | b;
        else if( f == 3'b100)   // A-1
            out = a - 1;
        else if( f == 3'b101)   // A+B
            out = a + b;
        else if( f == 3'b110)   // A-B
            out = a - b;
        else if( f == 3'b111)   // A+1
            out = a + 1;
    end
    assign is0 = (out == 32'b0) ? 1 : 0;
endmodule 
