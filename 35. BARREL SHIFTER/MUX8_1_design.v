module MUX8_1_design(
    input D0,
    input D1,
    input D2,
    input D3,
    input D4,
    input D5,
    input D6,
    input D7,
    input S0,
    input S1,
    input S2,
    output Vout
    );
    wire x1, x2;
    MUX4_1_design M1(D0, D1, D2, D3, S0, S1, x1);
    MUX4_1_design M2(D4, D5, D6, D7, S0, S1, x2);
    MUX2_1_design M3(x1, x2, S2, Vout);
endmodule
