module T_FF_design (
    input T, CLK,
    output reg Q,
    output reg Qbar
);

    always @(posedge CLK) begin
        if (T)
            Q <= ~Q;
        Qbar <= ~Q;
    end

endmodule
