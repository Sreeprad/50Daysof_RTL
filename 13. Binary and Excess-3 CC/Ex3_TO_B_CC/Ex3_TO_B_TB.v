module Cascaded_Subtractor_TB;

    reg [7:0] A;
    wire [7:0] S;

    // Instantiate the Cascaded_Subtractor module
    Cascaded_Subtractor uut(
        .A(A),
        .S(S)
    );

    initial begin
        // Test with different values of A
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
        $finish;
    end

endmodule
