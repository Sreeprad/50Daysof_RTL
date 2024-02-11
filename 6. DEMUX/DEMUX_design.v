module DEMUX_design(
    input S,
    input D,
    output Y1,
    output Y2
    );
    wire w1;
    not(w1, S);
    and(Y1, D, w1);
    and(Y2, D, S);
endmodule
