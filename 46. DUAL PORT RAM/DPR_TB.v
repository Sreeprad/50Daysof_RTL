module DPR_TB;

parameter DW = 8;
parameter AW = 4;
parameter depth = 16;
integer i;

    reg CLK;
    reg WEN;
    reg [DW-1:0] DI;
    reg [AW-1:0] A0;
    reg [AW-1:0] A1;
    reg PEN0;
    reg PEN1;
    wire [DW-1:0] DO0;
    wire [DW-1:0] DO1;

    DPR_design dut(CLK, WEN, DI, A0, A1, PEN0, PEN1, DO0, DO1);

    initial begin
        CLK = 1'b1;
        forever #5 CLK = ~CLK;
    end

    initial begin
        A1 = 0;
        PEN0 = 0;
        PEN1 = 0;
        WEN = 0;
        DI = 0;
        A0 = 0;
        #20;

        PEN0 = 1;
        WEN = 1;

        for (i = 1; i <= depth; i = i + 1) begin
            DI = i;
            A0 = i - 1;
            #10;
        end

        WEN = 0;
        PEN0 = 0;
        PEN1 = 1;

        for (i = 1; i <= depth; i = i + 1) begin
            A1 = i - 1;
            #10;
        end

        PEN1 = 0;
    end

    initial begin
        $monitor("write enable: %d  input data: %d  address 0: %d  address 1: %d  output 0: %d  output 1: %d", WEN, DI, A0, A1, DO0, DO1);
        #340 $finish;
    end
endmodule
