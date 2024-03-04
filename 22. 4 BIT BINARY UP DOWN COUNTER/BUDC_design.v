module BUDC_design(
    input CLK, RST, UPD, 
    output [3:0] C
);

reg [3:0] CUPD;

always @(posedge CLK or posedge RST) begin
    if(RST)
        CUPD <= 4'h0;
    else if (~UPD)
        CUPD <= CUPD + 4'd1;
    else
        CUPD <= CUPD - 4'd1;
end

assign C = CUPD;

endmodule