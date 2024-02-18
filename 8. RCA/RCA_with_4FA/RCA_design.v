module RCA_design(
    input A0,
    input A1,
    input A2,
    input A3,
    input B0,
    input B1,
    input B2,
    input B3,
    input Cin,
    output Cout,
    output S0,
    output S1,
    output S2,
    output S3
);

    wire C1, C2, C3;
    FA_design FA1(A0, B0, Cin, S0, C1);
    FA_design FA2(A1, B1, C1, S1, C2);
    FA_design FA3(A2, B2, C2, S2, C3);
    FA_design FA4(A3, B3, C3, S3, Cout);

endmodule
