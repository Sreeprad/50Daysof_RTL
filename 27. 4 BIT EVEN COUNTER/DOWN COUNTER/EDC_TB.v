module EDC_TB;

	reg CLK, RST;
	wire [3:0] C;

	EDC_design uut(CLK, RST, C);

	initial begin
		CLK = 0;
		forever #5 CLK = ~CLK;
	end

	initial begin
		RST = 1;
		#20
		RST = 0;
	end 

endmodule
