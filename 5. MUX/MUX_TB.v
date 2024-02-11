module MUX_TB;
  reg D0, D1, S;
  wire Vout;

  MUX2_1 uut(D0, D1, S, Vout);

  initial begin
    S = 0; D0 = 0; D1 = 0; #10;
    S = 0; D0 = 0; D1 = 1; #10;
    S = 0; D0 = 1; D1 = 0; #10;
    S = 0; D0 = 1; D1 = 1; #10;
    S = 1; D0 = 0; D1 = 0; #10;
    S = 1; D0 = 0; D1 = 1; #10;
    S = 1; D0 = 1; D1 = 0; #10;
    S = 1; D0 = 1; D1 = 1; #10;
  $finish();  
  end
endmodule
