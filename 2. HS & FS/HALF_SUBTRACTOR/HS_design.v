module HS_design(
    input A,
    input B,
    output Diff,
    output Borr
    );
    wire w1;
    xor (Diff, A, B);
    not (w1, A);
    and (Borr, w1, B);
endmodule