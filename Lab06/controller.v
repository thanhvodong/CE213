`timescale 1ns / 1ps

module controller(
    input [5:0] opcode,
    output reg RegDst, RegWrite, ALUsrc, MemWrite, MemRead, MemToReg,
    output reg [2:0] alu_control
    );
    //opcode
    parameter ADD       = 6'h0;
    parameter ADDI      = 6'h8;
    parameter LOAD      = 6'h23;
    parameter STORE     = 6'h2b;
    
    //alu control
    parameter comp      = 3'b000;
    parameter andd      = 3'b001;
    parameter xorr      = 3'b010;
    parameter orr       = 3'b011;
    parameter dec       = 3'b100;
    parameter add       = 3'b101;
    parameter sub       = 3'b110;
    parameter inc       = 3'b111;
    
    always @ (*) begin
        case (opcode) 
            ADD     :   begin
                RegDst      =   1;
                RegWrite    =   1;
                ALUsrc      =   0;
                alu_control =   add;
                MemWrite    =   0;
                MemRead     =   0;
                MemToReg    =   0;
                end
            ADDI    :   begin
                RegDst      =   0;
                RegWrite    =   1;
                ALUsrc      =   1;
                alu_control =   add;
                MemWrite    =   0;
                MemRead     =   0;
                MemToReg    =   0;
                end
            LOAD    :   begin
                RegDst      =   0;
                RegWrite    =   1;
                ALUsrc      =   1;
                alu_control =   add;
                MemWrite    =   0;
                MemRead     =   1;
                MemToReg    =   1;
                end
             STORE  :   begin
                RegDst      =   0;
                RegWrite    =   0;
                ALUsrc      =   1;
                alu_control =   add;
                MemWrite    =   1;
                MemRead     =   0;
                MemToReg    =   0;
                end
            default :   begin
                RegDst      =   1;
                RegWrite    =   0;
                ALUsrc      =   0;
                alu_control =   add;
                MemWrite    =   0;
                MemRead     =   0;
                MemToReg    =   0;
                end
        endcase
    end
endmodule     