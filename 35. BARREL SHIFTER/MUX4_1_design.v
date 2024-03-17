module MUX4_1_design(
    input [3:0] D,
    input S1, S2,
    output Vout
);

    wire w1, w2;
    
    MUX2_1_design M1(D[0], D[1], S1, w1);
    MUX2_1_design M2(D[2], D[3], S1, w2);
    MUX2_1_design M3(w1, w2, S2, Vout);

endmodule
