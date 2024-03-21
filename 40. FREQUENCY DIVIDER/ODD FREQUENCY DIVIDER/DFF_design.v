module DFF_design(
    input CLK, RST, D,
    output reg Q
);
    always @(posedge CLK)
    begin
        if (RST)
            Q <= 1'b0;
        else
            Q <= D;
    end
endmodule
