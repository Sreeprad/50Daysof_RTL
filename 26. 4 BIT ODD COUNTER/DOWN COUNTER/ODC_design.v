module ODC_design(
	input CLK, RST,
	output reg [3:0] C
);

	reg [3:0] CD;

	always @(posedge CLK or posedge RST)
	begin
		if(RST)
			CD <= 4'hf;
		else
			CD <= CD - 4'd2;
		C = CD;
	end

endmodule