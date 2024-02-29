module MJK_FF_design (
    input J, 
    input K, 
    input clk, 
    input rst, 
    output reg Q, 
    output reg Q_bar 
);

reg Q_temp; 

// Master section
always @(posedge clk, negedge rst) begin
    if (~rst) begin
        Q_temp <= 1'b0; // Reset state
    end else begin
        if (J & ~K) begin
            Q_temp <= 1'b1; // Set state
        end else if (~J & K) begin
            Q_temp <= 1'b0; // Reset state
        end else if (J & K) begin
            Q_temp <= ~Q_temp; // Toggle state
        end
    end
end

// Slave section
always @(posedge clk) begin
    Q <= Q_temp; // Update Q output on clock edge
    Q_bar <= ~Q_temp; // Update Q_bar output on clock edge
end

endmodule