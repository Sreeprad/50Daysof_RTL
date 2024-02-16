module CBA_design(
    input A0,
    input A1,
    input A2,
    input A3,
    input B0,
    input B1,
    input B2,
    input B3,
    input Cin,
    output Cout1,
    output Cout,
    output S0,
    output S1,
    output S2,
    output S3
    );
    wire C1, C2, C3;
    FA_design FA1(A0, B0, Cin, S0, C1);
    FA_design FA2(A1, B3, C1, S1, C2);
    FA_design FA3(A2, B3, C2, S2, C3);
    FA_design FA4(A3, B3, C3, S3, Cout1);
    
    wire P0, P1, P2, P3;
    xor(P0, A0, B0);
    xor(P1, A1, B1);
    xor(P2, A2, B2);
    xor(P3, A3, B3);
    
    wire X1, X2, Sel;
    and(X1, P0, P1);
    and(X2, P2, P3);
    and(Sel, X1, X2);
    
    MUX_design MUX1(Cin, Cout1, Sel, Cout); 
    
endmodule