
module MJK_FF_TB;

    reg J;
    reg K;
    reg clk;
    reg rst;
    
    wire Q;
    wire Q_bar;
    
    MJK_FF_design uut (
        .J(J),
        .K(K),
        .clk(clk),
        .rst(rst),
        .Q(Q),
        .Q_bar(Q_bar)
    );
    
    always begin
        clk = 0;
        #5;
        clk = 1;
        #5;
    end
    
    initial begin
        rst = 1;
        #10;
        rst = 0;
    end
    
    initial begin

        J = 1;
        K = 0;
        #20;
        
        J = 0;
        K = 1;
        #20;
        
        J = 1;
        K = 0;
        #20;
        
        J = 1;
        K = 1;
        #20;
        
        $finish;
    end
    
endmodule
