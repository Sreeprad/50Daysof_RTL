module PE_TB;

reg EN;
reg [7:0] I;
wire [2:0] Y;

PE_design uut(EN, I, Y);

initial begin
    EN = 1; I = 8'b10000000; #10;
    EN = 1; I = 8'b01000000; #10;
    EN = 1; I = 8'b00100000; #10;
    EN = 1; I = 8'b00010000; #10;
    EN = 1; I = 8'b00001000; #10;
    EN = 1; I = 8'b00000100; #10;
    EN = 1; I = 8'b00000010; #10;
    EN = 1; I = 8'b00000000; #10;
    EN = 0; I = 8'bx; #10;
    $finish;
end

endmodule

