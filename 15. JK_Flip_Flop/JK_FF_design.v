module JK_FF_design (
    input J, K, CLK,
    output reg Q, Qbar
    );

    always @(posedge CLK) begin
        if (J && !K)
            Q <= 1'b1;
        else if (!J && K)
            Q <= 1'b0;
        else if (J && K)
            Q <= ~Q;
    end

    always @(*) begin
        Qbar = ~Q;
    end

endmodule