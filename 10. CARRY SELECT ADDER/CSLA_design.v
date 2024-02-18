<<<<<<< HEAD
module CSLA_design(
    input A0,
    input A1,
    input A2,
    input A3,
    input B0,
    input B1,
    input B2,
    input B3,
    input Cin,
    input Cin1,
    input Cin2,
    output Cout,
    output S0,
    output S1,
    output S2,
    output S3
    );
    wire C10, C11, C12, Cout1, C20, C21, C22, Cout2;
    wire S10, S11, S12, S13, S20, S21, S22, S23;
    
    FA_design FA1(A0, B0, Cin1, S10, C10);
    FA_design FA2(A1, B1, C10, S11, C11);
    FA_design FA3(A2, B2, C11, S12, C12);
    FA_design FA4(A3, B3, C12, S13, Cout1);
    FA_design FA5(A0, B0, Cin2, S20, C20);
    FA_design FA6(A1, B1, C20, S21, C21);
    FA_design FA7(A2, B2, C21, S22, C22);
    FA_design FA8(A3, B3, C22, S23, Cout2);
    
    MUX_design MX1(S10, S20, Cin, S0);
    MUX_design MX2(S11, S21, Cin, S1);
    MUX_design MX3(S12, S22, Cin, S2);
    MUX_design MX4(S13, S23, Cin, S3);    
    
    MUX_design MXF(Cout1, Cout2, Cin, Cout); 
    
=======
module CSLA_design(
    input A0,
    input A1,
    input A2,
    input A3,
    input B0,
    input B1,
    input B2,
    input B3,
    input Cin,
    input Cin1,
    input Cin2,
    output Cout,
    output S0,
    output S1,
    output S2,
    output S3
    );
    wire C10, C11, C12, Cout1, C20, C21, C22, Cout2;
    wire S10, S11, S12, S13, S20, S21, S22, S23;
    
    FA_design FA1(A0, B0, Cin1, S10, C10);
    FA_design FA2(A1, B1, C10, S11, C11);
    FA_design FA3(A2, B2, C11, S12, C12);
    FA_design FA4(A3, B3, C12, S13, Cout1);
    FA_design FA5(A0, B0, Cin2, S20, C20);
    FA_design FA6(A1, B1, C20, S21, C21);
    FA_design FA7(A2, B2, C21, S22, C22);
    FA_design FA8(A3, B3, C22, S23, Cout2);
    
    MUX_design MX1(S10, S20, Cin, S0);
    MUX_design MX2(S11, S21, Cin, S1);
    MUX_design MX3(S12, S22, Cin, S2);
    MUX_design MX4(S13, S23, Cin, S3);    
    
    MUX_design MXF(Cout1, Cout2, Cin, Cout); 
    
>>>>>>> 3e3c4830248ac0eb2b91db77ea6c2fab36e4a912
endmodule