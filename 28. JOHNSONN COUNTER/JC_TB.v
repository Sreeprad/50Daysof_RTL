module JC_TB;

reg CLK, RST;
wire [3:0] OUT;

JC_design uut(CLK, RST, OUT);

always #5 CLK = ~CLK;

initial begin
    RST = 0; CLK = 0; #10;
    RST = 1; #400;
    $finish();
end

endmodule
