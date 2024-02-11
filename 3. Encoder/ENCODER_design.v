module ENCODER_design(
    input [7:0] D,
    
    output reg Y0 = 0,
    output reg Y1 = 0,
    output reg Y2 = 0
);

always @* 
 begin
    case({D})
        8'b00000001: begin 
                    Y0 = 0;
                    Y1 = 0;
                    Y2 = 0;
                    end
        8'b00000010:  
                    begin 
                    Y0 = 0;
                    Y1 = 0;
                    Y2 = 1; 
                    end
        8'b00000100:  
                    begin 
                    Y0 = 0;
                    Y1 = 1;
                    Y2 = 0; 
                    end
        8'b00001000: 
                    begin 
                    Y0 = 0;
                    Y1 = 1;
                    Y2 = 1;
                    end 
        8'b00010000:  
                    begin
                    Y0 = 1;
                    Y1 = 0; 
                    Y2 = 0; 
                    end
        8'b00100000:  
                    begin
                    Y0 = 1;
                    Y1 = 0;
                    Y2 = 1;
                    end 
        8'b01000000:  
                    begin
                    Y0 = 1; 
                    Y1 = 1; 
                    Y2 = 0; 
                    end
        8'b10000000:  
                    begin
                    Y0 = 1; 
                    Y1 = 1; 
                    Y2 = 1;
                    end 
        default: 
                begin
                Y0 = 0; 
                Y1 = 0; 
                Y2 = 0; 
                end
    endcase
end

endmodule
