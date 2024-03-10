module RC_TB;

reg CLK = 0, RST = 0;
wire [5:0] OUT;

RC_design uut(CLK, RST, OUT);

always #1 CLK = ~CLK;

initial begin   
    #10 RST = 1;
    #5 RST = 0;
    #200;
    $finish();
end

endmodule
