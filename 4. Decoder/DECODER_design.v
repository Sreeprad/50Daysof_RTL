module DECODER_design(
    input D0,
    input D1,
    input D2,
    output reg Y0 = 0,
    output reg Y1 = 0,
    output reg Y2 = 0,
    output reg Y3 = 0,
    output reg Y4 = 0,
    output reg Y5 = 0,
    output reg Y6 = 0,
    output reg Y7 = 0
    );
    always @* begin
        case({D2, D1, D0})
            3'b000: Y0 = 1;
            3'b001: Y1 = 1;
            3'b010: Y2 = 1;
            3'b011: Y3 = 1;
            3'b100: Y4 = 1;
            3'b101: Y5 = 1;
            3'b110: Y6 = 1;
            3'b111: Y7 = 1;
            default: {Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7} = 8'b00000000; 
        endcase
    end
endmodule
