module USR_design (
    input CLK, RST, SL, SR,
    input [7:0] PI,
    output [7:0] PO
);

    reg [7:0] RGD;

    always @(posedge CLK) begin
        if (RST)
            RGD <= 8'b0;
        else if (SL)
            RGD <= {RGD[6:0], 1'b0};
        else if (SR)
            RGD <= {1'b0, RGD[7:1]};
        else
            RGD <= PI;
    end

    assign PO = RGD;

endmodule
