module counter(clk, rst, inc_counter, co);	input inc_counter, clk, rst;	output co;
	reg co = 1'b0;	reg [8:0] pO = 9'b011010100;	always@(posedge clk, posedge rst) begin		if(rst)			pO= 9'b011010100;		else begin			if(inc_counter)				{co,pO} = pO + 1;		end	endendmodule
