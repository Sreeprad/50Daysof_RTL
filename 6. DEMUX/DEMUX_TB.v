module DEMUX_TB;
  reg S, D;
  wire Y1, Y2;

  DEMUX_design uut(S, D, Y1, Y2);

  initial begin
    S = 0; D = 0; #10;
    S = 0; D = 1; #10;
    S = 1; D = 0; #10;
    S = 1; D = 1; #10;
  $finish();
  end
endmodule
