module comparator(in,out);
	input[3:0] in;
	output out;
	reg out;
	
	always@(in)
	begin
		if(in > 4'b1001)
		begin out = 1'b1; end
		else
		begin out = 1'b0; end
	end
endmodule