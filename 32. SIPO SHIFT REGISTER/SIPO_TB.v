module SIPO_TB;
    reg CLK, SI;
    wire [7:0] PO;
    
    SIPO_design uut(CLK, SI, PO);
    initial begin
        CLK = 1'b0;
        forever #5 CLK = ~CLK;
    end

    initial begin
        SI = 1; #200;
        SI = 0; #200;
        $finish();
    end
endmodule
