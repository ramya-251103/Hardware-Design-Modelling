`timescale 1s / 1ns
 

module test;
reg [3:0] D;
wire P_even, P_odd ;

parity_gen dut(D,P_even,P_odd);
integer i;

initial begin
for(i=0;i<2**4;i=i+1)
begin
{D}=i;
#1;
end
end

initial begin
$monitor("D=%b,P_even=%b,P_odd=%b",D,P_even,P_odd);
end

endmodule
