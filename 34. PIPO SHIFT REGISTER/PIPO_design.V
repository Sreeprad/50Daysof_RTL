module PIPO_design(
    input CLK,
    input [3:0] PI,
    output reg [3:0] PO
);

    always @(posedge CLK) begin
        PO <= PI;
    end

endmodule
