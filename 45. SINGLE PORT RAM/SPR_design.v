module SPR_design
  #(parameter AW = 8,
    parameter DW = 16,
    parameter depth = 256)
 
  (input wire [DW-1:0] data,
   input wire [AW-1:0] address,
   input wire WEN, CLK,
   output reg [DW-1:0] Q);

  reg [DW-1:0] RAM [depth-1:0];
  reg [AW-1:0] addr_reg;

  always @(posedge CLK)
    if (WEN) 
        RAM[address] <= data; 
    else 
        addr_reg <= address;

  always @* Q = RAM[addr_reg];

endmodule

