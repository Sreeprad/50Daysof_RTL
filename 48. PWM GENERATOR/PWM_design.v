module PWM_design(
    input CLK,
    input [7:0] PWM_IN,
    output reg PWM_OUT
);

    wire [7:0] CO;
    wire RST;

    always @ (posedge CLK) begin
        if (PWM_IN > CO)
            PWM_OUT <= 1;
        else 
            PWM_OUT <= 0;
    end

    M8C_design m1(CLK, RST, CO);
    
endmodule
