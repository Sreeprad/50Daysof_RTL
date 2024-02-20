module SR_FF_design (
    input S, R, CLK,
    output Q, Qbar
    );
    
    wire X1, X2;

    nand (X1, CLK, S);
    nand (X2, CLK, R);
    nand (Q, X1, Qbar); 
    nand (Qbar, X2, Q);
endmodule