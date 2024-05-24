`timescale 1s / 1ns

module test;
reg reset = 0;
initial begin
$dumpfile("test.vcd");
$dumpvars(0,test);
# 10 reset = 1;
# 15 reset = 0;
# 12 reset = 1;
# 5 reset =0;
# 50 $finish;
end
 
reg clk = 0;
always #1 clk = !clk;
 
wire clk_out;
divide_5 c1 (.clk(clk),
.clk_out(clk_out));
initial begin
         $dumpfile("dump.vcd"); $dumpvars;
end

endmodule
