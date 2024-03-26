module BM_TB;
    reg signed [3:0] Q_IN, N_IN;
    wire signed [7:0] OUT;

    BM_design uut(Q_IN, N_IN, OUT);

    initial begin
        repeat (10) begin
            Q_IN = 3; N_IN = 7; #10;
            Q_IN = 3; N_IN = -7; #10;
            Q_IN = -3; N_IN = -7; #10;
            Q_IN = 5; N_IN = 6; #10;
            Q_IN = 5; N_IN = -6; #10;
            Q_IN = -5; N_IN = -6; #10;
        end
    end

    initial begin
        $monitor("%d * %d = %d", Q_IN, N_IN, OUT);
        #60 $finish;
    end
endmodule
