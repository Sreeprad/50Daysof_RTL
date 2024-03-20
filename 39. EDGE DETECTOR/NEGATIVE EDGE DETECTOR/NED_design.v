module NED_design(
    input SIG, CLK,
    output NE
);
    reg SIG_DLY;

    always @(negedge CLK) begin
        SIG_DLY <= SIG;
    end

    assign NE = ~SIG & SIG_DLY;
endmodule
