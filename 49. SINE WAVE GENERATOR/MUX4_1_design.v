module MUX4_1_design(
    input D0,
    input D1,
    input D2,
    input D3,
    input S0,
    input S1,
    output Vout
    );
    wire w1, w2;
    MUX2_1_design M1(D0, D1, S0, w1);
    MUX2_1_design M2(D2, D3, S0, w2);
    MUX2_1_design M3(w1, w2, S1, Vout);
endmodule