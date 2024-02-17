module Comparator_design(
  input [1:0] A, B,
  output reg A_grt_B, A_less_B, A_eq_B
);

always @(*) begin
  A_grt_B = 0; 
  A_less_B = 0; 
  A_eq_B = 0;
  
  if (A > B) 
    A_grt_B = 1'b1;
  else if (A < B) 
    A_less_B = 1'b1;
  else 
    A_eq_B = 1'b1;
end

endmodule
