`timescale 1ns/1ps
module tb_top(
);
    reg clk,rst;
    reg [31:0] instr;
    
    top top_instance(
        .clk(clk),
        .rst(rst),
        .instr(instr)
    );
    /*always @ (instr) begin
        if (instr === 32'bx)
            $finish;
    end*/
    initial begin
        clk <= 1'b0;
        forever #1 clk = ~clk;
    end
    initial begin
        rst = 0;
        #4 rst = 1;
    end
    initial begin
        #4;
        instr = 32'h2109000A;
        #2;
        instr = 32'h210A0012;
        #2;
        instr = 32'h210B000A;
        #2;
        instr = 32'h01494820;
        #2;
        instr = 32'h8D4C0008;
        #2;
        instr = 32'hAD4B000A;
        #2;
        $finish;
    end
    
    
endmodule


