module Comparator_TB;

reg [1:0] A, B;
wire A_grt_B, A_less_B, A_eq_B;

Comparator_design uut(A, B, A_grt_B, A_less_B, A_eq_B);

initial begin
    A = 2'b00; B = 2'b11; #10;
    A = 2'b01; B = 2'b10; #10;
    A = 2'b11; B = 2'b11; #10;
    A = 2'b10; B = 2'b00; #10;
    A = 2'b01; B = 2'b10; #10;
    $finish();
end

endmodule

