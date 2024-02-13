module CLAA_design(
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
    wire P0, P1, P2, P3, G0, G1, G2, G3;
    xor(P0, A0, B0);
    xor(P1, A1, B1);
    xor(P2, A2, B2);
    xor(P3, A3, B3);
    and(G0, A0, B0);
    and(G1, A1, B1);
    and(G2, A2, B2);
    and(G3, A3, B3);
    wire C1, C2, C3, X0, X1, X2, X3;
    and(X0, Cin, P0);
    and(X1, C1, P1);
    and(X2, C2, P2);
    and(X3, C3, P3);
    or(C1, X0, G0);
    or(C2, X1, G1);
    or(C3, X2, G2);
    or(Cout, X3, G3);
    wire CX1, CX2, CX3, CX4;
    FA_design FA1(A0, B0, Cin, S0, CX1);
    FA_design FA2(A1, B1, C1, S1, CX2);
    FA_design FA3(A2, B2, C2, S2, CX3);
    FA_design FA4(A3, B3, C3, S3, CX4);
endmodule