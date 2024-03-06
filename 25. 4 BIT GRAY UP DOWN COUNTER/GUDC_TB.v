module GUDC_TB;

reg CLK, RST, UPD;
wire [3:0] CG;

GUDC_design uut(CLK, RST, UPD, CG);

initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin
    RST = 1;
    UPD = 0;
    #20;
    RST = 0;
    #200;
    UPD = 1;
    #100;
    UPD = 0;
    #100;
    $finish;
end
endmodule
