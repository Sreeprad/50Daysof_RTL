module CLAA_TB;

    reg A0, A1, A2, A3, B0, B1, B2, B3, Cin = 0;
    wire Cout, S0, S1, S2, S3;

    CLAA_design uut(
        .A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .Cin(Cin),
        .Cout(Cout),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(S3)
    );

    initial begin
        A0 = 0; B0 = 0; A1 = 1; B1 = 0; A2 = 0; B2 = 0; A3 = 1; B3 = 0;
        #20
        A0 = 1; B0 = 0; A1 = 1; B1 = 1; A2 = 0; B2 = 1; A3 = 1; B3 = 1;
        #20
        A0 = 1; B0 = 1; A1 = 1; B1 = 1; A2 = 1; B2 = 1; A3 = 1; B3 = 1;
        #20
        A0 = 0; B0 = 1; A1 = 1; B1 = 1; A2 = 1; B2 = 0; A3 = 1; B3 = 1;
        #20
        A0 = 1; B0 = 0; A1 = 1; B1 = 0; A2 = 1; B2 = 1; A3 = 1; B3 = 1;
        #20
        $finish();
    end

endmodule