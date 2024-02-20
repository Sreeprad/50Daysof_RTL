module SR_FF_TB;
    reg S, R, CLK;
    wire Q, Qbar;

    SR_FF_design uut(S, R, CLK, Q, Qbar);

    always #5 CLK = ~CLK;

    initial begin
        CLK = 0;
        #50;
        S = 0; R = 0; #10;
        S = 0; R = 1; #10;
        S = 1; R = 0; #10;
        S = 1; R = 1; #10;
        $finish;
    end
endmodule
