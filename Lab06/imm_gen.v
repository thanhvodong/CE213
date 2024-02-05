`timescale 1ns / 1ps

module imm_gen(
    input [15:0] instr,
    output [31:0] imm_out
    );
    assign imm_out = {{17{instr[15]}}, instr[14:0]};
endmodule