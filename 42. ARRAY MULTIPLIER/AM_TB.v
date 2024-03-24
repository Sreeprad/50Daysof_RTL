module AM_TB;

reg [3:0] A, B;
wire [7:0] P;

AM_design uut(A, B, P);

initial begin
    A = 0;
    B = 0;

    repeat(16) begin
        repeat(16) begin
            $display("A = %b, B = %b", A, B);
            #10;
            B = B + 1;
        end
        A = A + 1;
        B = 0;
    end
    $finish();
end

endmodule
