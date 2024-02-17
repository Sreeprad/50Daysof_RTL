module Comparator_TB;

reg A, B;
wire A_grt_B, A_less_B, A_eq_B;

Comparator_design uut(A, B, A_grt_B, A_less_B, A_eq_B);

initial begin
    A = 1'b0; B = 1'b0; #10;
    A = 1'b0; B = 1'b1; #10;
    A = 1'b1; B = 1'b0; #10;
    A = 1'b1; B = 1'b1; #10;
    $finish();
end

endmodule
