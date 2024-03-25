module WTM_design(
    input [3:0] A, B, 
    output [7:0] Z
);

    wire [17:0] C;
    wire [10:0] S;
    wire [7:0] M;
    wire [7:0] P [7:0][3:0];

    assign {M[7:4], M[3:0]} = {{4{A[3]}}, A};
    
    genvar G;
    generate
        for (G = 0; G < 4; G = G + 1) begin : GEN_P_ASSIGN
            assign P[G][0] = M[G] & B[0];
            assign P[G][1] = M[G] & B[1];
            assign P[G][2] = M[G] & B[2];
            assign P[G][3] = M[G] & B[3];
        end
    endgenerate
    
    generate
        for (G = 0; G < 4; G = G + 1) begin : GEN_P_ASSIGN_2
            assign P[4][G] = M[4] & B[G];
        end
        for (G = 0; G < 3; G = G + 1) begin : GEN_P_ASSIGN_3
            assign P[5][G] = M[5] & B[G];
        end
        for (G = 0; G < 2; G = G + 1) begin : GEN_P_ASSIGN_4
            assign P[6][G] = M[6] & B[G];
        end
    endgenerate
    
    assign P[7][0] = M[7] & B[0];
    
    assign Z[0] = P[0][0];
    
    HA_design H0(P[0][2], P[1][1], S[0], C[0]);
    
    generate
        for (G = 0; G < 5; G = G + 1) begin : GEN_FA_ASSIGN
            FA_design FG0(P[G][3], P[G+1][2], P[G+2][1], S[G+1], C[G+1]);
        end
    endgenerate
    
    HA_design H1(S[1], P[3][0], S[6], C[6]);
    
    generate
        for (G = 0; G < 4; G = G + 1) begin : GEN_FA_ASSIGN_2
            FA_design FG1(S[G+2], P[G+4][0], C[G+1], S[G+7], C[G+7]);
        end
    endgenerate
    
    HA_design H2(P[0][1], P[1][0], Z[1], C[11]);
    FA_design F9(S[0], P[2][0], C[11], Z[2], C[12]);
    FA_design F10(S[6], C[0], C[12], Z[3], C[13]);
    
    generate
        for (G = 0; G < 4; G = G + 1) begin : GEN_FA_ASSIGN_3
            FA_design FG2(S[G+7], C[G+6], C[G+13], Z[G+4], C[G+14]);
        end
    endgenerate

endmodule