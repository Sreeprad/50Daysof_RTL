module SISO_TB;
    reg CLK, B;
    wire Q;

    initial begin
        CLK = 1'b0;
        forever #5 CLK = ~CLK;
    end

    initial begin
        B = 1; #20;
        B = 0; #20;
        $finish();
    end
endmodule
