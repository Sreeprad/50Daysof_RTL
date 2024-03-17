module BS_TB;

    reg A0, A1, A2, A3, A4, A5, A6, A7;
    reg S0, S1, S2;
    wire Vout0, Vout1, Vout2, Vout3, Vout4, Vout5, Vout6, Vout7;

    BS_design UUT (.A0(A0), .A1(A1), .A2(A2), .A3(A3), .A4(A4), .A5(A5), .A6(A6), .A7(A7),
                   .S0(S0), .S1(S1), .S2(S2),
                   .Vout0(Vout0), .Vout1(Vout1), .Vout2(Vout2), .Vout3(Vout3),
                   .Vout4(Vout4), .Vout5(Vout5), .Vout6(Vout6), .Vout7(Vout7));

    initial begin

        A0 <= 0; A1 <= 0; A2 <= 0; A3 <= 0; A4 <= 0; A5 <= 0; A6 <= 0; A7 <= 0;
        S0 <= 0; S1 <= 0; S2 <= 0;
        #100;

        // Test 1: Shift right by 1
        A0 <= 0; A1 <= 0; A2 <= 1; A3 <= 1; A4 <= 1; A5 <= 0; A6 <= 1; A7 <= 1;
        S0 <= 1; S1 <= 0; S2 <= 0;
        #100;

        // Test 2: Shift left by 2
        A0 <= 0; A1 <= 0; A2 <= 1; A3 <= 1; A4 <= 1; A5 <= 0; A6 <= 1; A7 <= 1;
        S0 <= 0; S1 <= 1; S2 <= 1;
        #100;

        // Test 3: Shift left by 3
        A0 <= 0; A1 <= 0; A2 <= 1; A3 <= 1; A4 <= 1; A5 <= 0; A6 <= 1; A7 <= 1;
        S0 <= 1; S1 <= 1; S2 <= 1;
        #100;
        
        // Test 4: Shift left by 4
        A0 <= 0; A1 <= 0; A2 <= 1; A3 <= 1; A4 <= 1; A5 <= 0; A6 <= 1; A7 <= 1;
        S0 <= 0; S1 <= 0; S2 <= 1;
        #100;

        // Test 5: Shift left by 5
        A0 <= 0; A1 <= 0; A2 <= 1; A3 <= 1; A4 <= 1; A5 <= 0; A6 <= 1; A7 <= 1;
        S0 <= 1; S1 <= 0; S2 <= 1;
        #100;

        // Test 6: Shift left by 6
        A0 <= 0; A1 <= 0; A2 <= 1; A3 <= 1; A4 <= 1; A5 <= 0; A6 <= 1; A7 <= 1;
        S0 <= 0; S1 <= 1; S2 <= 1;
        #100;

        // Test 7: Shift left by 7
        A0 <= 0; A1 <= 0; A2 <= 1; A3 <= 1; A4 <= 1; A5 <= 0; A6 <= 1; A7 <= 1;
        S0 <= 1; S1 <= 1; S2 <= 1;
        #100;
        
        $finish;
    end

endmodule
