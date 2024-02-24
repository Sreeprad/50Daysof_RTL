module EPG_design(
    input [7:0] B,
    output reg P
    );
    always @* begin
        P = ~(B[0] ^ B[1] ^ B[2] ^ B[3] ^ B[4] ^ B[5] ^ B[6] ^ B[7]);
    end 
endmodule