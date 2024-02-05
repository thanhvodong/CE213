module mux2to1_8bit (
  input [7:0] x,
  input [7:0] y,
  input wire select,
  output [7:0] m
);
  mux2to1_1bit  uut0 (.x(x[0]), .y(y[0]), .select(select), .m(m[0]));
  mux2to1_1bit  uut1 (.x(x[1]), .y(y[1]), .select(select), .m(m[1]));
  mux2to1_1bit  uut2 (.x(x[2]), .y(y[2]), .select(select), .m(m[2]));
  mux2to1_1bit  uut3 (.x(x[3]), .y(y[3]), .select(select), .m(m[3]));
  mux2to1_1bit  uut4 (.x(x[4]), .y(y[4]), .select(select), .m(m[4]));
  mux2to1_1bit  uut5 (.x(x[5]), .y(y[5]), .select(select), .m(m[5]));
  mux2to1_1bit  uut6 (.x(x[6]), .y(y[6]), .select(select), .m(m[6]));
  mux2to1_1bit  uut7 (.x(x[7]), .y(y[7]), .select(select), .m(m[7]));
endmodule
