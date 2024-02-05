module CircuitB(in,out);
	
	input in;
	output reg [6:0] out;
	always@(*)
	begin
		if(in==1'b1)
		begin out=7'b0000110; end
		else
		begin out=7'b0111111; end
	end

endmodule