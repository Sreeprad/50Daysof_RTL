module PIPO_TB;

    reg CLK = 1;
    reg [3:0] PI;
    wire [3:0] PO;

    PIPO_design uut(CLK, PI, PO);
    always #5 CLK = ~CLK;
    
    integer i;
    
    initial begin
        
        // Iterate through all possible 4-bit numbers
        for (i = 0; i < 16; i = i + 1) begin
            PI = i;
            #10;
        end
        #10;
        $finish();
    end

endmodule