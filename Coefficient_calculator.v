module Coefficient_calculator(clk, rst, Vect_X, Vect_Y, En,b_0,b_1);
	reg [19:0] b_1 = 20'b0;
	reg [19:0] b_0 = 20'b0;
	integer x1 = 0;
			x1<=x1+1;
			if(x1<=150)begin
			end
			else begin
				ssxy <= ssxy + (Vect_X - mean_x)*(Vect_Y - mean_y);
			if (ssxx ==0)
				b_1 = 0;
			else
			
			$display ("n",x1);
			$display ("b_1",b_1);
			$display ("b_0",b_0);
			$display ("ssxx",ssxx);
			$display ("ssxy",ssxy);
			$display ("mean_x",mean_x);
			$display ("mean_y",mean_y);
			end