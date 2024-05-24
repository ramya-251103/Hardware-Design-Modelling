`timescale 1s / 1ns
 

module n_bit(A,B,L,E,G);
input[3:0]A,B;
output reg L,E,G; //L-less than E-Equal G- Greater than

always@(*)
begin
if(A<B)
begin
L=1;
E=0;
G=0;
end
else if(A==B)
begin
E=1;
L=0;
G=0;
end
else
begin
G=1;
L=0;
E=0;
end

end


endmodule
