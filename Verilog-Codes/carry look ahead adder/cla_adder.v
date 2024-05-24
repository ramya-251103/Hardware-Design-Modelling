`timescale 1s / 1ns
 
module cla_adder(A,B,Cin,Sum,Carry);

input [3:0]A,B;
input Cin;
output [3:0]Sum;
output Carry;

 
//G-carry generate and P- carry propagate
wire G0,G1,G2,G3,P0,P1,P2,P3;
wire [3:0] C; //internal carries
assign G0 = A[0]&B[0];
assign G1 = A[1]&B[1];
assign G2 = A[2]&B[2];
assign G3 = A[3]&B[3];
assign P0 = A[0]^B[0];
assign P1 = A[1]^B[1];
assign P2 = A[2]^B[2];
assign P3 = A[3]^B[3];

assign C[0] = G0 | (P0&Cin);
assign C[1] = G1 | (P1&G0) | (P1&P0&Cin);
assign C[2] = G2 | (P2&G1) | (P2&P1&G0) | (P2&P1&P0&Cin);
assign C[3] = G3 | (P3&G2) | (P3&P2&G1) | (P3&P2&P1&G0) | (P3&P2&P1&P0&Cin);

assign Sum[0] = A[0]^B[0]^Cin;
assign Sum[1] = A[1]^B[1]^C[0];
assign Sum[2] = A[2]^B[2]^C[1];
assign Sum[3] = A[3]^B[3]^C[2];

assign Carry = C[3];

endmodule


