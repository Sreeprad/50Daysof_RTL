module OUC_TB();

  reg clk, reset;
  wire [3:0] counter;

  OUC_design dut(clk, reset, counter);

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    reset = 1;
    #20;
    reset = 0;
    #50;
  end

endmodule
