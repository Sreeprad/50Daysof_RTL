module BS_design(
    input [7:0] A,
    input [2:0] S,
    output reg [7:0] Vout
);

    MUX8_1_design mux0(A[7], A[0], A[1], A[2], A[3], A[4], A[5], A[6], S[2:0], Vout[7:0]);
    MUX8_1_design mux1(A[6], A[7], A[0], A[1], A[2], A[3], A[4], A[5], S[2:0], Vout[7:0]);
    MUX8_1_design mux2(A[5], A[6], A[7], A[0], A[1], A[2], A[3], A[4], S[2:0], Vout[7:0]);
    MUX8_1_design mux3(A[7], A[5], A[6], A[7], A[0], A[1], A[2], A[3], S[2:0], Vout[7:0]);
    MUX8_1_design mux4(A[7], A[4], A[5], A[6], A[7], A[0], A[1], A[2], S[2:0], Vout[7:0]);
    MUX8_1_design mux5(A[7], A[3], A[4], A[5], A[6], A[7], A[0], A[1], S[2:0], Vout[7:0]);
    MUX8_1_design mux6(A[7], A[2], A[3], A[4], A[5], A[6], A[7], A[0], S[2:0], Vout[7:0]);
    MUX8_1_design mux7(A[0], A[1], A[2], A[3], A[4], A[5], A[6], A[7], S[2:0], Vout[7:0]);

endmodule
