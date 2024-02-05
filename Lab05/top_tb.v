`timescale 1ns / 1ps

module tb_top;

  // Declare signals
  reg clk, rst;
  reg [31:0] instr;
  reg [4:0] alu_control;
  reg RegDst, RegWrite, ALUsrc, MemWrite, MemRead, MemToReg;
  wire iszero;
  reg [4:0] A1, A2, A3;
  reg [31:0] WD3;
  reg WE3;
  wire [31:0] RD1, RD2;

  // Instantiate the top module
  top uut (
    .clk(clk),
    .rst(rst),
    .instr(instr),
    .iszero(iszero),
    .alu_control(alu_control),
    .RegDst(RegDst),
    .RegWrite(RegWrite),
    .ALUsrc(ALUsrc),
    .MemWrite(MemWrite),
    .MemRead(MemRead),
    .MemToReg(MemToReg),
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .WD3(WD3),
    .WE3(WE3),
    .RD1(RD1),
    .RD2(RD2)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Reset generation
  initial begin
    rst = 1;
    #10 rst = 0;
  end

  // Test for add $1, $2, $3
  initial begin
    instr = 32'b000000_00011_00010_00001_00000_100000;
    #50;
    $display("Result of 'add $1, $2, $3': RD1=%h, RD2=%h", RD1, RD2);
    // Add your assertions here
    #50 $finish;
  end

  // Test for lw $1, 0($2)
  initial begin
    instr = 32'b100011_00010_00001_00000_00000_000000;
    #50;
    $display("Result of 'lw $1, 0($2)': RD1=%h, RD2=%h", RD1, RD2);
    // Add your assertions here
    #50 $finish;
  end

  // Test for sw $1, 0($2)
  initial begin
    instr = 32'b101011_00010_00001_00000_00000_000000;
    #50;
    $display("Result of 'sw $1, 0($2)': RD1=%h, RD2=%h", RD1, RD2);
    // Add your assertions here
    #50 $finish;
  end

endmodule
