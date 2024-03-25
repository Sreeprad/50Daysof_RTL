module WTM_TB;
  reg [3:0] A, B;
  wire [7:0] P;
  
  WTM_design uut(A, B, P);
  
  initial begin
    $monitor("A = %b: B = %b --> Product = %b", A, B, P);
    // input A can be signed, but B must be unsigned
    repeat(100) begin
      A = $random % 16; // Randomize A within 0 to 15
      B = $random % 16; // Randomize B within 0 to 15
      #10; // Delay for observation
    end
  end
endmodule
