module G_TO_B_TB;
    reg [7:0] G;
    wire [7:0] B;

    G_TO_B_design uut(
        .G(G),
        .B(B)
    );

    initial begin
        G = 8'b00000000; #10
        G = 8'b00110011; #10
        G = 8'b01111111; #10
        G = 8'b01010101; #10
        G = 8'b11110000; #10
        G = 8'b11111111; #10
        G = 8'b11011011; #10
        G = 8'b10101010; #10
        G = 8'b11101110; #10
        G = 8'b11111010; #10
        $finish();
    end

endmodule
