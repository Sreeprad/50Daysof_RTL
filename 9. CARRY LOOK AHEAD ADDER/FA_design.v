module FA_design(
    input A,
    input B,
    input C,
    output Sum,
    output Carry
    );

    wire X1, X2, X3;
    wire C1, C2;

    xor (X1, A, B);
    xor (Sum, X1, C);

    and (C1, A, B);
    and (C2, C, X1);
    or (Carry, C1, C2);
endmodule