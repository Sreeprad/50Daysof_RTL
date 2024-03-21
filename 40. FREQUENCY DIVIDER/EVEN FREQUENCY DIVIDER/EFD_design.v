module EFD_design(
    input CLK, RST,
    output CLK_OUT
);
    wire IN1;
    
    DFF_design DFF1(CLK, RST, ~CLK_OUT, IN1);
    DFF_design DFF2(CLK, RST, IN1, CLK_OUT);
    
endmodule
