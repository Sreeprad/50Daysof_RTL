module B_TO_Ex3_TB;

    reg [7:0] A;
    reg Cin = 0;
    wire Cout;
    wire [7:0] S;

    B_TO_Ex3_design uut(
        .A(A),
        .B(8'b00000011),
        .Cin(Cin),
        .Cout(Cout),
        .S(S)
    );

    initial begin
        A = 8'b00000000;
        #10;
        A = 8'b11111111;
        #10;
        A = 8'b01010101;
        #10;
        A = 8'b10000000;
        #10;
        A = 8'b00001000;
        #10;
        A = 8'b11001100;
        #10;
        A = 8'b10101010;
        #10;
        A = 8'b11110000;
        #10;
        A = 8'b00001111;
        #10;
        A = 8'b11111100;
        #10;
        $finish();
    end

endmodule