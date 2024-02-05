module Cau6(
    input clk,
    input rst,
    input [4:0] swh,
    input [5:0] swm,
    input [5:0] sws,
    output reg [4:0] H,
    output reg [5:0] M,
    output reg [5:0] S,
    output reg error, count_enable,
	 output reg [3:0] S_bcd_h, S_bcd_l,M_bcd_h,M_bcd_l,H_bcd_h,H_bcd_l
);

always @* begin
    if (swh != 6'b000000 || swm != 6'b000000 || sws != 6'b000000) begin
        count_enable = 1; // Enable counting if all switches are not 1
		  error = (swh > 23 || swm > 59 || sws > 59) ? 1 : 0;
		  end
    else begin
        count_enable = 0; // Disable counting if any switch is 1
		  error = 0;
		  end
end

always @(posedge(clk) or posedge(rst)) begin
    if (rst == 1'b1) begin
        S = 0;
        M = 0;
        H = 0;
    end
	 else if(clk == 1'b1) begin 
			if(count_enable == 1) begin
				S = sws;
				M = swm;
				H = swh;
            S = sws + 1; //increment sec
            if(S == 60) begin //check for max value of sec
                S = 0;  //reset seconds
                M = swm + 1; //increment minutes
                if(M == 60) begin //check for max value of min
                    M = 0;  //reset minutes
                    H = swh + 1;  //increment hours
                   if(H ==  24) begin  //check for max value of hours
                        H = 0; //reset hours
                    end 
                end
            end 
				if (S > 59) S = 59;
				if (M > 59) M = 59;
				if (H > 23) H = 23;				
        end
		  else if(count_enable == 0) begin
		   S = S + 1; //increment sec
            if(S == 60) begin //check for max value of sec
                S = 0;  //reset seconds
                M = M + 1; //increment minutes
                if(M == 60) begin //check for max value of min
                    M = 0;  //reset minutes
                    H = H + 1;  //increment hours
                   if(H ==  24) begin  //check for max value of hours
                        H = 0; //reset hours
                    end 
                end
            end     
        end
	 end
	 S_bcd_l <= S%10;
	 S_bcd_h <= S/10; 
	 M_bcd_l <= M%10;
	 M_bcd_h <= M/10; 
	 H_bcd_l <= H%10;
	 H_bcd_h <= H/10; 
end

endmodule
