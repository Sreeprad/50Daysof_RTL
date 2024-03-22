module FG_TB;

    reg [3:0] N;
    wire [31:0] FACT;

    FG_design uut(N, FACT);

    initial begin
        N = 1; #10;
        N = 2; #10;
        N = 3; #10;
        N = 4; #10;
        N = 5; #10;
        N = 6; #10;
        N = 7; #10;
        N = 8; #10;
        N = 9; #10;
        N = 10; #10;
        N = 11; #10;
        N = 12; #10;
        N = 13; #10;
        N = 14; #10;
        N = 15; #10;
        $finish;
    end

endmodule
