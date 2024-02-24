module EPG_TB;
    reg [7:0] B;
    wire P;

    EPG_design uut(B, P);
    initial begin
        B = 8'b11101010;
        B = 8'b10111010;
        B = 8'b10101110;
        B = 8'b10101011;
        B = 8'b10101010;
        B = 8'b10101000;
        B = 8'b10100010;
        B = 8'b10101010;
        B = 8'b10100010;
        B = 8'b11111110;
        B = 8'b00101010;
        B = 8'b10001010;
    end
endmodule