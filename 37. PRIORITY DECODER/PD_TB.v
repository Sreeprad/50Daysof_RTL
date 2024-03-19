module PD_TB;

reg EN;
reg [2:0] I;
wire [7:0] Y;

PD_design uut(EN, I, Y);

initial begin
    EN = 1; I = 3'b111; #10;
    EN = 1; I = 3'b110; #10;
    EN = 1; I = 3'b101; #10;
    EN = 1; I = 3'b100; #10;
    EN = 1; I = 3'b011; #10;
    EN = 1; I = 3'b010; #10;
    EN = 1; I = 3'b001; #10;
    EN = 1; I = 3'b000; #10;
    EN = 0; I = 3'bxxx; #10;
    $finish;
end

endmodule
