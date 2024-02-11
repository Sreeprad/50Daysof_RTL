module DECODER_TB;

  reg D0, D1, D2;
  wire Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7;
  
  DECODER_design uut(
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
  );

  initial begin
    D2 = 0; D1 = 0; D0 = 0;
    #10;
    if (Y0 !== 1 || Y1 !== 0 || Y2 !== 0 || Y3 !== 0 || Y4 !== 0 || Y5 !== 0 || Y6 !== 0 || Y7 !== 0) $display("Test case 1 failed!");

    D2 = 0; D1 = 0; D0 = 1;
    #10;
    if (Y0 !== 0 || Y1 !== 1 || Y2 !== 0 || Y3 !== 0 || Y4 !== 0 || Y5 !== 0 || Y6 !== 0 || Y7 !== 0) $display("Test case 2 failed!");

    D2 = 0; D1 = 1; D0 = 0;
    #10;
    if (Y0 !== 0 || Y1 !== 0 || Y2 !== 1 || Y3 !== 0 || Y4 !== 0 || Y5 !== 0 || Y6 !== 0 || Y7 !== 0) $display("Test case 3 failed!");

    D2 = 0; D1 = 1; D0 = 1;
    #10;
    if (Y0 !== 0 || Y1 !== 0 || Y2 !== 0 || Y3 !== 1 || Y4 !== 0 || Y5 !== 0 || Y6 !== 0 || Y7 !== 0) $display("Test case 4 failed!");

    D2 = 1; D1 = 0; D0 = 0;
    #10;
    if (Y0 !== 0 || Y1 !== 0 || Y2 !== 0 || Y3 !== 0 || Y4 !== 1 || Y5 !== 0 || Y6 !== 0 || Y7 !== 0) $display("Test case 5 failed!");

    D2 = 1; D1 = 0; D0 = 1;
    #10;
    if (Y0 !== 0 || Y1 !== 0 || Y2 !== 0 || Y3 !== 0 || Y4 !== 0 || Y5 !== 1 || Y6 !== 0 || Y7 !== 0) $display("Test case 6 failed!");

    D2 = 1; D1 = 1; D0 = 0;
    #10;
    if (Y0 !== 0 || Y1 !== 0 || Y2 !== 0 || Y3 !== 0 || Y4 !== 0 || Y5 !== 0 || Y6 !== 1 || Y7 !== 0) $display("Test case 7 failed!");

    D2 = 1; D1 = 1; D0 = 1;
    #10;
    if (Y0 !== 0 || Y1 !== 0 || Y2 !== 0 || Y3 !== 0 || Y4 !== 0 || Y5 !== 0 || Y6 !== 0 || Y7 !== 1) $display("Test case 8 failed!");

    $stop;
  end

endmodule
