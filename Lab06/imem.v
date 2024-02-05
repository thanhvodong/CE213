module imem(
    input address,
    output  [31:0] RD
);
    reg [31:0] A [0:63];

    assign  RD = A[address];

    initial begin
        $readmemh ("instr_file.txt", A);
    end

endmodule
