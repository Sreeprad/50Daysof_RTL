module PE_design(
    input EN, 
    input [7:0] I,
    output reg [2:0] Y
);

always @(EN, I) begin
    if (EN == 1) begin
        if (I[7] == 1)
            Y = 3'b111;
        else if (I[6] == 1)
            Y = 3'b110;
        else if (I[5] == 1)
            Y = 3'b101;
        else if (I[4] == 1)
            Y = 3'b100;
        else if (I[3] == 1)
            Y = 3'b011;
        else if (I[2] == 1)
            Y = 3'b010;
        else if (I[1] == 1)
            Y = 3'b001;
        else 
            Y = 3'b000;
    end
    else
        Y = 3'bzzz;
end

endmodule
