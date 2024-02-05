`timescale 1ns / 1ps

module alu_tb;

  // Declare signals
  reg [31:0] a, b;
  reg [2:0] f;
  wire [31:0] out;

  // Instantiate the ALU module
  alu uut(
    .a(a),
    .b(b),
    .f(f),
    .out(out)
  );

  // Initial block to apply input values
  initial begin
    // Initialize inputs
    a = 32'h00000001;
    b = 32'h00000002;
    f = 3'b000;

    // Apply inputs and display header
    $display("Cycle\tA\tB\tF\tResult");
    $monitor("%d\t%h\t%h\t%b\t%h", $time, a, b, f, out);

    // Apply different operations
    #10 f = 3'b001; // AND
    #10 f = 3'b010; // XOR
    #10 f = 3'b011; // OR
    #10 f = 3'b100; // A-1
    #10 f = 3'b101; // A+B
    #10 f = 3'b110; // A-B
    #10 f = 3'b111; // A+1

    // Add more test cases as needed

    #10 $finish; // Finish simulation after 10 time units
  end

endmodule
