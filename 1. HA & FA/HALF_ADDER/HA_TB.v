module HA_TB;
reg A, B;
wire Sum, Carry;

HA_design uut(A, B, Sum, Carry);

initial begin
A = 0; B = 0; #10
A = 0; B = 1; #10
A = 1; B = 0; #10
A = 1; B = 1; #10
$finish();
end

endmodule