module B_TO_G_TB;
    reg [7:0] B;
    wire [7:0] G;

    B_TO_G_design uut(
        .B(B),
        .G(G)
    );

    initial begin
        B = 8'b00000000; #10
        B = 8'b01010001; #10
        B = 8'b01010111; #10
        B = 8'b01010101; #10
        B = 8'b01110001; #10
        B = 8'b01010101; #10
        B = 8'b01011001; #10
        B = 8'b01010101; #10
        B = 8'b01010111; #10
        B = 8'b01011101; #10
        $finish();
    end

endmodule
