module BM_design (
    input signed [3:0] Q_IN, N_IN,
    output reg signed [7:0] OUT
);
    reg [1:0] OP;
    integer i;
    reg Q0;
    reg [3:0] N_COMP;

    always @(Q_IN, N_IN)
    begin
        OUT = 8'd0;
        Q0 = 1'b0;
        N_COMP = -N_IN;
    
        for (i = 0; i < 4; i = i + 1)
        begin
            OP = { Q_IN[i], Q0 };
            case(OP)
                2'b10 : OUT[7:4] = OUT[7:4] + N_COMP;
                2'b01 : OUT[7:4] = OUT[7:4] + N_IN;
            endcase
            OUT = OUT >> 1;
            OUT[7] = OUT[6];
            Q0 = Q_IN[i];
        end
    end
endmodule
