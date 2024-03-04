module BUDC_TB;

reg CLK, RST, UPD;
wire [3:0] C;

BUDC_design uut(CLK, RST, UPD, C);

initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin
    RST = 1;
    UPD = 0; #20
    RST = 0; #200
    UPD = 1;
end

endmodule

    
    