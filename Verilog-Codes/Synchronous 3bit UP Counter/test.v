`timescale 1s / 1ps

module test;

reg d,clk,rst;
wire q;

d_latch dut(d,clk,rst,q);

initial begin
clk = 0;

rst = 0;
#7 rst =1;

d=0;
#4 d=1;

#20 d=0;
#10 d=1;
#10 $finish;
end

always #5 clk= ~clk;

endmodule
