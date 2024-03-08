module JC_design (
    input CLK, RST,
    output reg [3:0] OUT
);
integer i;
always @(posedge CLK)
begin
    if (!RST)
        OUT <= 1;
    else begin
        OUT[3] <= ~OUT[0];
        for(i = 0; i < 3; i = i + 1) begin
            OUT[i] <= OUT[i + 1];
        end
    end
end

endmodule