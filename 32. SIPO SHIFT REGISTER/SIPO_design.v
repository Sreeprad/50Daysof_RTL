module SIPO_design(
    input CLK, SI,
    output [7:0] PO
);
    reg [7:0] tmp;

    always @(posedge CLK) begin
        tmp = {tmp[6:0], SI};
    end

    assign PO = tmp;

endmodule
