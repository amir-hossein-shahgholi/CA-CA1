module Data_loader(clk,rst,inc_vector,Vect_X,Vect_Y);
	input clk,rst,inc_vector;
	output reg [19:0] Vect_X,Vect_Y;
	reg[19:0] memx[0:149];
	reg[19:0] memy[0:149];
	initial
	begin
		$readmemb("C:/Users/Lenovo/Desktop/x_value.txt",memx);
		$readmemb("C:/Users/Lenovo/Desktop/y_value.txt",memy);
	end
	integer n = 0;
	always @(posedge clk,rst) begin
		if(rst)
			n <=0;
		else 
			if(inc_vector) begin
			Vect_X <= memx[n%150];
			Vect_Y <= memy[n%150];
			n<=n+1;
		end
	end
endmodule
			
		
