module Element_design(
    input A, B, HCin, VCin,
    output HCout, VCout
);

    wire w1;
    
    assign w1 = A & B;
    
    FA_design FA1(w1, VCin, HCin, HCout, VCout);

endmodule
