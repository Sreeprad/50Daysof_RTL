module D_FF_TB;
    reg D, CLK;
    wire Q, Qbar;

    D_FF_design uut(D, CLK, Q, Qbar);

    always #5 CLK = ~CLK;

    initial begin
        D = 0; CLK = 0;
        #50;
        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        D = 1; #10;
        $finish;
    end
endmodule
