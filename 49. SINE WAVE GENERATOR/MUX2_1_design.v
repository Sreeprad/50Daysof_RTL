module MUX2_1_design(
    input D0,
    input D1,
    input S,
    output Vout
    );
    wire w2, w3;
    and U2(w2, D0, ~S);
    and U3(w3, D1, S);
    or U4(Vout, w2, w3);
endmodule