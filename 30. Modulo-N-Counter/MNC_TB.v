module MNC_TB;
    parameter N = 10;
    parameter W = 4;

    reg CLK, RST;
    wire [W - 1:0] OUT;

    MNC_design uut(CLK, RST, OUT);

    always #5 CLK = ~CLK;

    initial begin
        {CLK, RST} <= 0;

        #200; RST <= 1;
        #200; 
        $finish();
    end
endmodule
