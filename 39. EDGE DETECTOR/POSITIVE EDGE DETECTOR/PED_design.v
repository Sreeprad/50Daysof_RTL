module PED_design(
    input SIG, CLK,
    output PE
);
    reg SIG_DLY;

    always @(posedge CLK) begin
        SIG_DLY <= SIG;
    end

    assign PE = SIG & ~SIG_DLY;
endmodule
