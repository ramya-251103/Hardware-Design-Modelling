`timescale 1s / 1ns
 
module encoder(B,O);
input [2:0]B; //binary
output reg [7:0]O; //one-hot

always @(*) begin
    case(B)
        3'b000: O = 8'b00000001;
        3'b001: O = 8'b00000010;
        3'b010: O = 8'b00000100;
        3'b011: O = 8'b00001000;
        3'b100: O = 8'b00010000;
        3'b101: O = 8'b00100000;
        3'b110: O = 8'b01000000;
        3'b111: O = 8'b10000000;
        
    endcase
end

endmodule
