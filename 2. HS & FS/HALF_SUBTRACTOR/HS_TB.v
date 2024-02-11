module HS_TB;
reg A, B;
wire Diff, Borr;

HS_design uut(A, B, Diff, Borr);

initial begin
A = 0; B = 0; #10
A = 0; B = 1; #10
A = 1; B = 0; #10
A = 1; B = 1; #10
$finish();
end

endmodule