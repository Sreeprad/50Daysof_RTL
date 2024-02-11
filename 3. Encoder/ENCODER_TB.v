module testbench;

  reg [7:0] D;
  wire Y0, Y1, Y2;
  
  ENCODER_design UUT(
    D,
    Y0,
    Y1,
    Y2
  );

  initial begin
    D = 8'b00000001;
    #10;
    if (Y0 !== 0 || Y1 !== 0 || Y2 !== 0) $display("Test case 1 failed!");

    D = 8'b00000010;
    #10;
    if (Y0 !== 0 || Y1 !== 0 || Y2 !== 1) $display("Test case 2 failed!");

    D = 8'b00000100;
    #10;
    if (Y0 !== 0 || Y1 !== 1 || Y2 !== 0) $display("Test case 3 failed!");

    D = 8'b00001000;
    #10;
    if (Y0 !== 0 || Y1 !== 1 || Y2 !== 1) $display("Test case 4 failed!");

    D = 8'b00010000;
    #10;
    if (Y0 !== 1 || Y1 !== 0 || Y2 !== 0) $display("Test case 5 failed!");

    D = 8'b00100000;
    #10;
    if (Y0 !== 1 || Y1 !== 0 || Y2 !== 1) $display("Test case 6 failed!");

    D = 8'b01000000;
    #10;
    if (Y0 !== 1 || Y1 !== 1 || Y2 !== 0) $display("Test case 7 failed!");

    D = 8'b10000000;
    #10;
    if (Y0 !== 1 || Y1 !== 1 || Y2 !== 1) $display("Test case 8 failed!");

    $stop;
  end

endmodule
