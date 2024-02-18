module G_TO_B_design(
    input [7:0] G,
    output reg [7:0] B
    );
    integer i;
    always @* begin
        B[7] = G[7]; // Most significant bit remains the same
        
        for(i = 6; i >= 0; i = i - 1) begin
            B[i] = G[i] ^ B[i + 1];
        end 
    end
endmodule