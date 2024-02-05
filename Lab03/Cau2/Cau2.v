module Cau2 (
	input CLOCK, reset,
	output r1, y1, g1, r2, y2, g2
);
reg [2:0]state, next_state;
reg [3:0] count;
parameter 	s0 = 3'b000,
				s1 = 3'b001,
				s2 = 3'b010,
				s3 = 3'b011,
				s4 = 3'b100,
				s5 = 3'b101;

	always @(posedge CLOCK)
	begin
		if (state == s0 || state == s3)
			begin 
				if (count <  6)
					count <= count + 1;
				else 
					begin
						count <= 0;
						state <= next_state;
					end
			end
		else 
			begin
				if (count <  2)
					count <= count + 1;
				else 
					count <= 0;
					state <= next_state;
			end
	end
	
		always @(state) 
		case (state) 
			s0:
				next_state = s1; 
			s1:
				next_state = s2;
			s2:
				next_state = s3;
			s3:
				next_state = s4;
			s4:
				next_state = s5;
			s5:
				next_state = s0;
		endcase
	assign 	r1 = (state == s2 || state == s3 || state == s4 || state == s5) ? 1'b1 : 1'b0,
				y1 = (state == s1) ? 1'b1 : 1'b0,
				g1 = (state == s0) ? 1'b1 : 1'b0,
				
				r2 = (state == s0 || state == s1 || state == s2 || state == s5) ? 1'b1 : 1'b0,
				y2 = (state == s4) ? 1'b1 : 1'b0,
				g2 = (state == s3) ? 1'b1 : 1'b0;
endmodule