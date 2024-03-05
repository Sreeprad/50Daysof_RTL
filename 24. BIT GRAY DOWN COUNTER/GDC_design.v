module GDC_design (
    input   CLK,
    input   RST,
    output reg [3:0] CG
);

reg [3:0] CB;
integer i;

always @(posedge CLK or negedge RST) begin
    if (!RST)
        CB <= 4'b1111; 
    else
        CB <= CB - 1; 

    for (i = 3; i > 0; i = i - 1) begin
        if (i == 3) begin
            CG[i] = CB[i];
            CG[i - 1] = CB[i] ^ CB[i - 1];
        end else begin
            CG[i - 1] = CB[i] ^ CB[i - 1];
        end
    end
end

endmodule