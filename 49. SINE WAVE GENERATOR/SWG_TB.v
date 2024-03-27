module SWG_TB;

  reg [9:0] T;
  wire [15:0] O;
  
  SWG_design uut(T, O);
  
  integer i;
  
  initial begin
    $monitor("o=%d", O);
    #5 T = 0;
    for (i = 0; i < 1024; i = i + 1) begin
      #5 T = i;
    end
  end
  
endmodule
