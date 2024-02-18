module Comparator_TB;

reg [3:0] A, B;
wire A_grt_B, A_less_B, A_eq_B;

Comparator_design uut(A, B, A_grt_B, A_less_B, A_eq_B);

initial begin
    A = 4'b1010; B = 4'b0000; #10;
    A = 4'b1011; B = 4'b1110; #10;
    A = 4'b1111; B = 4'b1111; #10;
    A = 4'b0011; B = 4'b1001; #10;
    A = 4'b0101; B = 4'b0101; #10;
    A = 4'b1110; B = 4'b0110; #10;
    A = 4'b0001; B = 4'b0111; #10;
    A = 4'b1100; B = 4'b0011; #10;
    A = 4'b1000; B = 4'b1001; #10;
    $finish();
end

endmodule

