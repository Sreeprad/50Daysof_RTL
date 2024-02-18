<<<<<<< HEAD
module MUX_design (
    input D0,
    input D1,
    input S,
    output Vout
    );
    wire w1, w2, w3;
    not U1(w1, S);
    and U2(w2, D0, w1);
    and U3(w3, D1, S);
    or U4(Vout, w2, w3);
=======
module MUX_design (
    input D0,
    input D1,
    input S,
    output Vout
    );
    wire w1, w2, w3;
    not U1(w1, S);
    and U2(w2, D0, w1);
    and U3(w3, D1, S);
    or U4(Vout, w2, w3);
>>>>>>> 3e3c4830248ac0eb2b91db77ea6c2fab36e4a912
endmodule