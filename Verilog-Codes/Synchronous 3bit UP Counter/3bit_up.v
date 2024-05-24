`timescale 1s/1ns



module d_synch(input d,clk,rst,output reg q);


always@(posedge clk)
begin
if(!rst)
q<=0;
else
q<=d;

end
endmodule
