module ROM_TB;

reg clk;
reg RST;
reg [3:0] ADR;
wire [15:0] D;

ROM_design dut(
    .CLK(clk),
    .RST(RST),
    .ADR(ADR),
    .D(D)
);

initial begin
    clk = 0;
    forever #5 clk <= ~clk;
end

initial begin
    // Initialize memory
    dut.M[0]  = 16'h0103;
    dut.M[1]  = 16'h5200;
    dut.M[2]  = 16'he0b9;
    dut.M[3]  = 16'h0412;
    dut.M[4]  = 16'h4839;
    dut.M[5]  = 16'h0112;
    dut.M[6]  = 16'h0377;
    dut.M[7]  = 16'h0572;
    dut.M[8]  = 16'hcafe;
    dut.M[9]  = 16'h6225;
    dut.M[10] = 16'h1447;
    dut.M[11] = 16'haeec;
    dut.M[12] = 16'h52dd;
    dut.M[13] = 16'h1113;
    dut.M[14] = 16'h4444;
    dut.M[15] = 16'h5555;

    // Apply stimulus to address input
    ADR = 0;
    RST = 0;
    #10 RST = 1;
    #10 ADR = 1;
    #10 ADR = 2;
    #10 ADR = 3;
    #10 ADR = 4;
    #10 ADR = 5;
    #10 ADR = 6;
    #10 ADR = 7;
    #10 ADR = 8;
    #10 ADR = 9;
    #10 ADR = 10;
    #10 ADR = 11;
    #10 ADR = 12;
    #10 ADR = 13;
    #10 ADR = 14;
    #10 ADR = 15;

    #10 $finish;
end

endmodule
