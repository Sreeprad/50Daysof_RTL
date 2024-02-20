module T_FF_TB;
    reg T, CLK;
    wire Q, Qbar;

    T_FF_design uut(T, CLK, Q, Qbar);

    always #5 CLK = ~CLK;

    initial begin
        CLK = 0;
        #50;
        T = 0; #10;
        T = 1; #10;
        T = 0; #10;
        T = 1; #10;
        $finish;
    end
endmodule
