module PISO_TB;
    reg CLK, LOAD;
    reg [3:0] PI;
    wire SO;

    PISO_design uut(CLK, LOAD, PI, SO);
    
    initial begin
        CLK = 1'b0;
        forever #5 CLK = ~CLK;
    end

    initial begin
        LOAD = 1; PI = 4'b1101; #20;
        LOAD = 0; #20;
        LOAD = 1; PI = 4'b1010; #20;
        LOAD = 0; #20;
        $finish();
    end
endmodule
