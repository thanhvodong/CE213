module mux2to1 (in1,in2,select,out);
input in1, in2, select;
output out;
assign out = select ? in2 : in1;
endmodule
