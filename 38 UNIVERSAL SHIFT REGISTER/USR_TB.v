module USR_TB;
  reg CLK, RST, SL, SR;
  reg [7:0] PI;
  wire [7:0] PO;
  
  USR_design dut (CLK, RST, SL, SR, PI, PO);

  initial begin
    CLK = 1'b0; forever #5 CLK= ~CLK;
  end

  initial begin
    RST = 1'b1; SL = 1'b0; SR = 1'b0; PI = 8'he5; #10;
    RST = 1'b0; #10;
    SL = 1'b1; SR = 1'b0; #10;
    SL = 1'b0; SR = 1'b1; #10;
    SL = 1'b1; SR = 1'b0; #10;
    SL = 1'b1; SR = 1'b0; #10;
    SL = 1'b0; SR = 1'b1;
  end
  
  initial begin
    $monitor("\t input: %b right shift: %b  left shift: %b  output: %b", PI, SR, SL, PO);
    #75 $finish;
  end
endmodule
