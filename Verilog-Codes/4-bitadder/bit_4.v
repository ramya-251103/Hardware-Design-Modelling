 `timescale 1s / 1ns
 

module HA(A,B,C,D);
input A,B;
output C,D;
//D=Carry C=Sum
assign C = A^B;
assign D=A&B;

endmodule

module FA(P,Q,R,S,T); //R = Cin, S = Sum, T =Carry
input P,Q,R;
output S,T;

assign S = P^Q^R;
assign T = (P&Q)|(Q&R)|(R&P);

endmodule

module bit4_adder(W,X,Sum,Carry);
input[3:0] W,X;
output[3:0] Sum;
output Carry;
wire C1,C2,C3;
 
//instantiation
HA h1((W[0]),(X[0]),Sum[0],C1);
FA f1(W[1],X[1],C1,Sum[1],C2);
FA f2(W[2],X[2],C2,Sum[2],C3);
FA f3(W[3],X[3],C3,Sum[3],Carry);

endmodule
