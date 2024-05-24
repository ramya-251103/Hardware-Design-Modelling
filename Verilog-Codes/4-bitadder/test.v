`timescale 1s / 1ns
 
module test;

reg[3:0]W,X;
wire[3:0]Sum;
wire Carry;

bit4_adder dut(.W(W),.X(X),.Sum(Sum),.Carry(Carry));
integer i;
initial begin
for(i=0;i<2**8;i=i+1)
begin
{W,X}=i;
#2;
end
end

initial begin
$monitor("W=%b,X=%b,Sum=%b,Carry=%b",W,X,Sum,Carry);
end
endmodule
