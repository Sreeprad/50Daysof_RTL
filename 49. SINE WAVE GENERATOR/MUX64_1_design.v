module MUX64_1_design(
    input D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15,
    input D16, D17, D18, D19, D20, D21, D22, D23, D24, D25, D26, D27, D28, D29, D30, D31,
    input D32, D33, D34, D35, D36, D37, D38, D39, D40, D41, D42, D43, D44, D45, D46, D47,
    input D48, D49, D50, D51, D52, D53, D54, D55, D56, D57, D58, D59, D60, D61, D62, D63,
    input S0, S1, S2, S3, S4, S5,
    output Vout
);
    wire x1, x2, x3, x4;
    MUX16_1_design M1(D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, S0, S1, S2, S3, x1);
    MUX16_1_design M2(D16, D17, D18, D19, D20, D21, D22, D23, D24, D25, D26, D27, D28, D29, D30, D31, S0, S1, S2, S3, x2);
    MUX16_1_design M3(D32, D33, D34, D35, D36, D37, D38, D39, D40, D41, D42, D43, D44, D45, D46, D47, S0, S1, S2, S3, x3);
    MUX16_1_design M4(D48, D49, D50, D51, D52, D53, D54, D55, D56, D57, D58, D59, D60, D61, D62, D63, S0, S1, S2, S3, x4);
    
    MUX4_1_design M5(x1, x2, x3, x4, S4, S5, Vout);
endmodule
