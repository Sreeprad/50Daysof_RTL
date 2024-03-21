module OFG_TB;

reg CLK, RST;
wire CLK_OUT;

OFD_design uut(CLK, RST, CLK_OUT);

initial begin
    CLK = 1;
    forever #1 CLK = ~CLK;
end

initial begin
    RST = 1; #20;
    RST = 0; #380;
    $finish();
end

endmodule
