module EFD_TB;

reg CLK, RST;
wire CLK_OUT;

EFD_design uut(CLK, RST, CLK_OUT);

initial begin
    CLK = 1; 
    forever #10 CLK = ~CLK;
end

initial begin
    RST = 1; #20;
    RST = 0; #220;
    $finish();
end

endmodule
