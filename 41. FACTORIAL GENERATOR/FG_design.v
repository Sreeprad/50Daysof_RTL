module FG_design(
    input [3:0] N,
    output reg [31:0] FACT
);

    reg [31:0] fact;
    integer i;

    always @ (N) begin
        fact = 1;
        i = 1;
        while (i <= N) begin
            fact = i * fact;
            i = i + 1;
        end
        FACT = fact;
    end

endmodule