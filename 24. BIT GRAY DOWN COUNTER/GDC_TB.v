module GDC_TB;
  
  reg CLK = 0;
  reg RST = 0;
  wire [3:0] CG;
  
  GDC_design uut(CLK, RST, CG) ;
  
  always #10 CLK = ~CLK;
  
  initial begin

    #10 RST = 1;
    #1000 
    $finish();
  end

endmodule
