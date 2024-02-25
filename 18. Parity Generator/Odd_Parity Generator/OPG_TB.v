module OPG_TB;
    reg [7:0] B;
    wire P;

    OPG_design uut(B, P);
    initial begin
        B = 8'b11101010; #10
        B = 8'b10111010; #10
        B = 8'b10101110; #10
        B = 8'b10101011; #10
        B = 8'b10101010; #10
        B = 8'b10101000; #10
        B = 8'b10100010; #10
        B = 8'b10101010; #10
        B = 8'b10100010; #10
        B = 8'b11111110; #10
        B = 8'b00101010; #10
        B = 8'b10001010; #10;
        $finish();
    end
endmodule