module GUDC_design(
    input CLK, RST, UPD, 
    output reg [3:0] CG
);

reg [3:0] CUPD;
integer i;

always @(posedge CLK or posedge RST) begin
    if(RST)
        CUPD <= 4'h0;
    else if (UPD)
        CUPD <= CUPD + 4'd1;
    else
        CUPD <= CUPD - 4'd1;

    // Generate BINARY TO GRAY 
    for (i = 2; i >= 0; i = i - 1) begin
        CG[i] = CUPD[i] ^ CUPD[i + 1];
    end
    CG[3] = CUPD[3];
end

endmodule
