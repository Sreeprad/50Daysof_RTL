module SPR_TB;
  parameter AW = 8;
  parameter DW = 16;
  parameter depth = 256;

  reg [DW-1:0] data;
  reg [AW-1:0] address;
  reg WEN, CLK;
  wire [DW-1:0] Q;

  SPR_design dut(
    .data(data),
    .address(address),
    .WEN(WEN),
    .CLK(CLK),
    .Q(Q)
  );

  initial begin
    CLK = 1'b1;
    forever #5 CLK = ~CLK;
  end

  initial begin
    data = 16'hf0; address = 8'd0; WEN = 1; #10;
    data = 16'he1; address = 8'd1; WEN = 0; #10;
    data = 16'hd2; address = 8'd2; WEN = 0; #10;
    data = 16'hz;  address = 8'd0; WEN = 0; #10;
    address = 8'd2; WEN = 0; #10;
    address = 8'd1; WEN = 0; #10;
  end

  initial begin
    $monitor("write enable: %b  address: %b  data: %b  output: %b", WEN, address, data, Q);
    #60 $finish;
  end
endmodule
