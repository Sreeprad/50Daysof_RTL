// This module accepts 64 16-bit inputs and a 6-bit select signal and outputs a single 16-bit output
module MUX16_64_design(
    input [15:0] i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16,
    input [15:0] i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31, i32,
    input [15:0] i33, i34, i35, i36, i37, i38, i39, i40, i41, i42, i43, i44, i45, i46, i47, i48,
    input [15:0] i49, i50, i51, i52, i53, i54, i55, i56, i57, i58, i59, i60, i61, i62, i63, i64,
    input [5:0] s
    output reg [15:0] o,
);
    wire [15:0] x1, x2, x3, x4;
    wire vout;
    
    // Instantiate Model 2 and connect inputs
    MUX64_1_design mux64(
        .D0(i1), .D1(i2), .D2(i3), .D3(i4), .D4(i5), .D5(i6), .D6(i7), .D7(i8),
        .D8(i9), .D9(i10), .D10(i11), .D11(i12), .D12(i13), .D13(i14), .D14(i15), .D15(i16),
        .D16(i17), .D17(i18), .D18(i19), .D19(i20), .D20(i21), .D21(i22), .D22(i23), .D23(i24),
        .D24(i25), .D25(i26), .D26(i27), .D27(i28), .D28(i29), .D29(i30), .D30(i31), .D31(i32),
        .D32(i33), .D33(i34), .D34(i35), .D35(i36), .D36(i37), .D37(i38), .D38(i39), .D39(i40),
        .D40(i41), .D41(i42), .D42(i43), .D43(i44), .D44(i45), .D45(i46), .D46(i47), .D47(i48),
        .D48(i49), .D49(i50), .D50(i51), .D51(i52), .D52(i53), .D53(i54), .D54(i55), .D55(i56),
        .D56(i57), .D57(i58), .D58(i59), .D59(i60), .D60(i61), .D61(i62), .D62(i63), .D63(i64),
        .S0(s[0]), .S1(s[1]), .S2(s[2]), .S3(s[3]), .S4(s[4]), .S5(s[5]),
        .Vout(vout)
    );

    // Output assignment
    always @(*) begin
        o = vout;
    end
endmodule