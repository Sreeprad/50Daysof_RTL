module B_TO_Ex3_design(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output Cout,
    output [7:0] S
);

    wire [7:0] C;
    genvar i;
    generate
        // Instantiation of the first full adder outside the loop
        FA_design FA0(A[0], B[0], Cin, S[0], C[0]);
        // Loop for instantiating remaining full adders
        for (i=1; i<8; i=i+1) begin : FA_loop
            FA_design FA(
                .A(A[i]),
                .B(B[i]),
                .C(C[i-1]),
                .Sum(S[i]),
                .Carry(C[i])
            );
        end
    endgenerate
    assign Cout = C[7];

endmodule