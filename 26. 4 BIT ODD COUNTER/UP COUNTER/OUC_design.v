module OUC_design (
   input clk,
   input reset,
   output reg [3:0] counter
);

reg [3:0] counter_up;

always @(posedge clk or posedge reset) begin
   if (reset) begin
       counter_up <= 4'd1;
   end else begin
       counter_up <= counter_up + 4'd2;
   end
   counter <= counter_up; 
end

endmodule
