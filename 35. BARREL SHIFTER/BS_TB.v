module BS_TB;

    reg [7:0] A;
    reg [2:0] S;
    wire [7:0] Vout;

    BS_design UUT (.A(A), .S(S), .Vout(Vout));

    initial begin

        A <= 8'b00000000; S <= 3'b000; #10;

        // Test 1: Shift right by 1
        A <= 8'b11001100;
        S <= 3'b001;
        #100;

        // Test 2: Shift left by 2
        A <= 8'b11001100;
        S <= 3'b110;
        #100;

        // Test 3: Shift left by 3
        A <= 8'b11001100;
        S <= 3'b111;
        #100;
        
        // Test 4: Shift left by 4
        A <= 8'b11001100;
        S <= 3'b100;
        #100;

        // Test 5: Shift left by 5
        A <= 8'b11001100;
        S <= 3'b101;
        #100;

        // Test 6: Shift left by 6
        A <= 8'b11001100;
        S <= 3'b110;
        #10;

        // Test 7: Shift left by 7
        A <= 8'b11001100;
        S <= 3'b111;
        #10;
        
        $finish;
    end

endmodule
