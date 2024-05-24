`timescale 1s / 1ns 

module test;

reg [2:0]B;
wire [7:0] O;

encoder dut(B,O);
integer i;
initial begin
for(i=0;i<2**3;i=i+1)
begin
{B}=i;
#2;
end
end

initial begin
$monitor("B=%b,O=%b",B,O);
end
endmodule
