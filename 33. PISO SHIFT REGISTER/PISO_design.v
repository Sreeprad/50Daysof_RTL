module PISO_design(
    input CLK, 
    input LOAD, 
    input [3:0] PI,
    output reg SO
);

reg [3:0] tmp;

always @(posedge CLK) begin
    if(LOAD) begin
        tmp <= PI;
    end
    else begin
        SO <= tmp[3];
        tmp <= {tmp[2:0], 1'b0};
    end
end

endmodule
