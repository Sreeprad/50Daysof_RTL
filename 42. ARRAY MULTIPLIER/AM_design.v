module AM_design(
    input [3:0] A,
    input [3:0] B,
    output [7:0] P
);

wire [3:0] S0, S1, S2, S3, S4, S5, S6;
wire [3:0] C0, C1, C2, C3, C4, C5, C6;

// FIRST ROW
Element_design E0(A[0], B[0], 0, 0, C0[0], S0[0]);
Element_design E1(A[1], B[0], C0[0], 0, C1[0], S1[0]);
Element_design E2(A[2], B[0], C1[0], 0, C2[0], S2[0]);
Element_design E3(A[3], B[0], C2[0], 0, C3[0], S3[0]);

// SECOND ROW
Element_design E4(A[0], B[1], 0, S1[0], C1[1], S1[1]);
Element_design E5(A[1], B[1], C1[1], S2[0], C2[1], S2[1]);
Element_design E6(A[2], B[1], C2[1], S3[0], C3[1], S3[1]);
Element_design E7(A[3], B[1], C3[1], C3[0], C4[1], S4[1]);

// THIRD ROW
Element_design E8(A[0], B[2], 0, S2[1], C2[2], S2[2]);
Element_design E9(A[1], B[2], C2[2], S3[1], C3[2], S3[2]);
Element_design E10(A[2], B[2], C3[2], S4[1], C4[2], S4[2]);
Element_design E11(A[3], B[2], C4[2], C4[1], C5[2], S5[2]);

// FOURTH ROW
Element_design E12(A[0], B[3], 0, S3[2], C3[3], S3[3]);
Element_design E13(A[1], B[3], C3[3], S4[2], C4[3], S4[3]);
Element_design E14(A[2], B[3], C4[3], S5[2], C5[3], S5[3]);
Element_design E15(A[3], B[3], C5[3], C5[2], C6[3], S6[3]);

assign P[0] = S0[0];
assign P[1] = S1[1];
assign P[2] = S2[2];
assign P[3] = S3[3];
assign P[4] = S4[3];
assign P[5] = S5[3];
assign P[6] = S6[3];
assign P[7] = C6[3];

endmodule
