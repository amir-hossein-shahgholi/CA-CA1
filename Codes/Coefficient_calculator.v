module Coefficient_calculator(clk, rst, Vect_X, Vect_Y, En,b_0,b_1);	input clk, rst,En;	input [19:0] Vect_X,Vect_Y;	output b_1,b_0;
	reg [19:0] b_1 = 20'b0;
	reg [19:0] b_0 = 20'b0;	real sum_x = 32'b0;	real sum_y = 32'b0;	real mean_x = 20'b0;	real mean_y = 20'b0;	real ssxx = 20'b0;	real ssxy = 20'b0;
	integer x1 = 0;	always @(posedge clk)begin		if(rst) begin			x1=1;			sum_x=0;			sum_y=0;			mean_x=0;			mean_y=0;		end		else if(En) begin
			x1<=x1+1;
			if(x1<=150)begin				sum_x<= sum_x + Vect_X;				sum_y<=sum_y+Vect_Y;
			end
			else begin				mean_x <= (sum_x/150);				mean_y <= (sum_y/150);
				ssxy <= ssxy + (Vect_X - mean_x)*(Vect_Y - mean_y);				ssxx <= ssxx + (Vect_X-mean_x)*(Vect_X-mean_x);
			if (ssxx ==0)
				b_1 = 0;
			else				b_1 <= $realtobits(ssxy/ssxx);			b_0 <= $realtobits(mean_y - (mean_x * b_1));
			
			$display ("n",x1);
			$display ("b_1",b_1);
			$display ("b_0",b_0);
			$display ("ssxx",ssxx);
			$display ("ssxy",ssxy);
			$display ("mean_x",mean_x);
			$display ("mean_y",mean_y);
			end		end	end	endmodule 