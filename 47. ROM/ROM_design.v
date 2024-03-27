module ROM_design(
    input CLK, RST,
    input [3:0] ADR,
    output reg [15:0] D
);

    reg [15:0] M [15:0];

    always @(posedge CLK) begin
        if(RST)
            D <= M[ADR];
        else
            D <= 'bz;
    end

endmodule
