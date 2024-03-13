module SISO_design(
    input CLK, B,
    output Q
);
    wire w1, w2, w3;
    DFF_design uut1(.CLK(CLK), .D(B), .Q(w1), .RST());
    DFF_design uut2(.CLK(CLK), .D(w1), .Q(w2), .RST());
    DFF_design uut3(.CLK(CLK), .D(w2), .Q(w3), .RST());
    DFF_design uut4(.CLK(CLK), .D(w3), .Q(Q), .RST());
    
endmodule
