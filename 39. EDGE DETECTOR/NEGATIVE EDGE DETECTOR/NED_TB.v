module NED_TB;

reg SIG, CLK;
wire NE;

NED_design uut(
    .SIG(SIG),
    .CLK(CLK),
    .NE(NE)
);

always #5 CLK = ~CLK;

initial begin
    CLK <= 0;
    repeat (100) begin 
        #5;
        SIG <= $random % 2; 
    end
    #5;
    $finish();
end

endmodule
