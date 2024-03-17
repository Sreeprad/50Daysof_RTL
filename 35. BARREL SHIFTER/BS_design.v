module BS_design(
    input A0, A1, A2, A3, A4, A5, A6, A7,
    input S0, S1, S2,
    output Vout0,
    output Vout1,
    output Vout2,
    output Vout3,
    output Vout4,
    output Vout5,
    output Vout6,
    output Vout7
);

    MUX8_1_design mux0(A7, A0, A1, A2, A3, A4, A5, A6, S0, S1, S2, Vout0);
    MUX8_1_design mux1(A6, A7, A0, A1, A2, A3, A4, A5, S0, S1, S2, Vout1);
    MUX8_1_design mux2(A5, A6, A7, A0, A1, A2, A3, A4, S0, S1, S2, Vout2);
    MUX8_1_design mux3(A7, A5, A6, A7, A0, A1, A2, A3, S0, S1, S2, Vout3);
    MUX8_1_design mux4(A7, A4, A5, A6, A7, A0, A1, A2, S0, S1, S2, Vout4);
    MUX8_1_design mux5(A7, A3, A4, A5, A6, A7, A0, A1, S0, S1, S2, Vout5);
    MUX8_1_design mux6(A7, A2, A3, A4, A5, A6, A7, A0, S0, S1, S2, Vout6);
    MUX8_1_design mux7(A0, A1, A2, A3, A4, A5, A6, A7, S0, S1, S2, Vout7);

endmodule