module PWM_TB;
    reg CLK;            
    wire PWM_OUT;
    wire [7:0] CO;
    reg [7:0] PWM_IN;
    assign CO = PWM_INST_1.COUNTER_INST.COUNTER_OUT;
    parameter CYCLE = 2000;
    parameter HALF_CYCLE = 1000;
    parameter PWM_CYCLE = 512000;

    initial begin
        CLK = 1'b0;
        PWM_INST_1.COUNTER_INST.CO = 8'b0;
        PWM_IN = 8'b00000000;
    end

    begin 
        #PWM_CYCLE PWM_IN = PWM_IN + 1;
    end

    always begin
        #HALF_CYCLE CLK = !CLK;
    end

    PWM_design uut(CLK, PWM_IN, PWM_OUT);
    
endmodule
   