`timescale 1s / 1ns

module test;

reg[3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Carry;

cla_adder dut(.A(A),.B(B),.Cin(0),.Sum(Sum),.Carry(Carry));
integer i;

initial begin
for(i=0;i<2**8;i=i+1)
begin
{A,B}=i;
#1;
end
end

initial begin
$monitor("A=%b,B=%b,Sum=%b,Carry=%b",A,B,Sum,Carry);
end

endmodule

 

