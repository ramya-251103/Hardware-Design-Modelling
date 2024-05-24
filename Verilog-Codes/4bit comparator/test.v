`timescale 1s / 1ns


module test;

reg [3:0] A,B;
wire L,E,G;

n_bit dut(A,B,L,E,G);
integer i;
initial begin

for(i=0;i<2**8;i=i+1)
begin
{A,B}=i;
#1;
end
end

initial begin
$monitor("A=%b,B=%b,L=%b,E=%b,G=%b",A,B,L,E,G);
end

endmodule
