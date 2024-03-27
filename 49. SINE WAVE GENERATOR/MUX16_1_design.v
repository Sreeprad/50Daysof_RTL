module MUX16_1_design(
    input D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, S0, S1, S2, S3,
    output Vout
    );
    
    wire x1, x2, x3, x4;
    MUX8_1_design M1(D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, x1);
    MUX8_1_design M2(D8, D9, D10, D11, D12, D13, D14, D15, S0, S1, S2, x2);
    MUX2_1_design M3(x1, x2, S3, Vout);
    
endmodule
