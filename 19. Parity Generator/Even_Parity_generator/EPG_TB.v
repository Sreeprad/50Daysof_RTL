module EPG_TB;
    reg [7:0] A;
    wire P;

    EPG_design uut(A, P);
    initial begin
        A = 8'b10101010;
        A = 8'b11101010;
        A = 8'b10111010;
        A = 8'b10101110;
        A = 8'b10101011;
        A = 8'b10101000;
        A = 8'b10100010;
        A = 8'b10101010;
        A = 8'b10100010;
        A = 8'b11111110;
        A = 8'b00101010;
        A = 8'b10001010;
    end
endmodule