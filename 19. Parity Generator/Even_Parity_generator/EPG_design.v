module EPG_design(
    input [7:0] A,
    output reg P
    );
    always @* begin
        P = A[0] ^ A[1] ^ A[2] ^ A[3] ^ A[4] ^ A[5] ^ A[6] ^ A[7];
    end 
endmodule