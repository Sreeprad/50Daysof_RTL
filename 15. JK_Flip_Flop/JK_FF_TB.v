module JK_FF_TB;
    reg J, K, CLK;
    wire Q, Qbar;

    JK_FF_design uut(J, K, CLK, Q, Qbar);

    always #5 CLK = ~CLK;

    initial begin
        J = 0; K = 0; CLK = 0;
        #50;
        J = 0; K = 0; #10;
        J = 0; K = 1; #10;
        J = 1; K = 0; #10;
        J = 1; K = 1; #10;
        $finish;
    end
endmodule
