module OFD_design(
    input CLK, RST,
    output CLK_OUT
);

wire IN1;
wire [2:0] Q;

M5C_design uut(CLK, RST, Q);
DFF_design uut(~CLK, RST, Q[1], IN1);

or O1(CLK_OUT, Q[1], IN1);

endmodule
