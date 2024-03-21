module MNC_design #(
    parameter N = 5,
    parameter W = 3
)(
    input CLK, RST,
    output reg [W - 1:0] OUT
);

    always @ (posedge CLK) begin
        if (RST) begin
            OUT <= 0;
        end else begin
            if (OUT == N - 1)
                OUT <= 0;
            else
                OUT <= OUT + 1;
        end
    end

endmodule
