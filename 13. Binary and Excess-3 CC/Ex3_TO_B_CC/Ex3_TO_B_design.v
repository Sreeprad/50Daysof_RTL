module Cascaded_Subtractor(
    input [7:0] A,
    output [7:0] S
);

    wire [7:0] B;
    wire [7:0] Diffs;
    wire [7:0] Bouts;

    // Set B to 8'b00000011
    assign B = 8'b00000011;

    // Instantiate eight FS_design modules
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : SUB_module
            FS_design SUB(
                .A(A[i]),
                .B(B[i]),
                .Bin(1'b1), // Invert B input for subtraction
                .Diff(Diffs[i]),
                .Bout(Bouts[i])
            );
        end
    endgenerate

    // Output S is the result of the subtractions
    assign S = Diffs;

endmodule
