`timescale 1ns / 1ps
 
module test;
reg [7:0] A,B;
reg [2:0] sel;
wire [7:0] out;

alu dut(A,B,sel,out);
integer i;
initial begin
assign A = 8'b11011010;
assign B = 8'b11100001;
for(i=0;i<2**3;i=i+1)
begin
{sel}=i;
#2;
end
end

initial begin
$monitor("sel=%b,A=%b,B=%b,out=%b",sel,A,B,out);
end
endmodule
