// 8 - BIT Binary to Gray Code COnverter
module B_TO_G_design(
    input [7:0] B,
    output reg [7:0] G
    );
    integer i;
    always @* begin
        for(i = 7; i > 0; i = i - 1) begin
            if(i == 7)begin
                G[i] = B[i];
                G[i - 1] = B[i] ^ B[i - 1];
            end else 
                G[i - 1] = B[i] ^ B[i - 1];
        end 
    end
endmodule