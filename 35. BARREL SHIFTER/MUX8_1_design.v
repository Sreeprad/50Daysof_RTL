module MUX8_1_design(
    input [7:0] D,
    input [2:0] S,
    output Vout
);

    wire w1, w2;
    
    MUX4_1_design M1_1(D[3:0], S[1:0], w1);
    MUX4_1_design M1_2(D[7:4], S[1:0], w2);
    MUX2_1_design M1_3(w1, w2, S[2], Vout);

endmodule
