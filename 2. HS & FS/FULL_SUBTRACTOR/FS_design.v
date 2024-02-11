module FS_design(
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
    );
    wire w1, w2, w3, w4, w5;
    xor (w1, A, B);
    xor (Diff, w1, Bin);
    not (w2, w1);
    and (w3, Bin, w2);
    not (w4, A);
    and (w5, w4, B);
    or (Bout, w3, w5);
    
endmodule