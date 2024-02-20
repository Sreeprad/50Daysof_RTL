module D_FF_design (
    input D, CLK,
    output reg Q,
    output reg Qbar
);

    always @(posedge CLK) begin
        Q <= D;
        Qbar <= ~Q;
    end

endmodule
