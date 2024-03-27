module DPR_design #(parameter DW = 8, parameter AW = 4, parameter depth = 16)
    (
    input CLK,
    input WEN,
    input [DW-1:0] DI,
    input [AW-1:0] A0,
    input [AW-1:0] A1,
    input PEN0,
    input PEN1,
    output [DW-1:0] DO0,
    output [DW-1:0] DO1
    );

    reg [DW-1:0] ram [0:depth-1];

    always @(posedge CLK)
    begin
        if (PEN0 == 1 && WEN == 1)
            ram[A0] <= DI;
    end

    assign DO0 = PEN0 ? ram[A0] : 'dZ;
    assign DO1 = PEN1 ? ram[A1] : 'dZ;

endmodule
