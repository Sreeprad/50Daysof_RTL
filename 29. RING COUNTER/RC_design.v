module RC_design(
    input CLK, RST,
    output reg [5:0] OUT
);

    always @ (posedge CLK) begin  
        if (!RST) begin
            OUT <= OUT << 1;
            OUT[0] <= OUT[5];
        end   
    end
    
    always @ (posedge RST) begin   
        OUT <= 6'b1;
    end

endmodule
