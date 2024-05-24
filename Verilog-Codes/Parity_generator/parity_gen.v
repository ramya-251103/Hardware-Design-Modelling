 `timescale 1s / 1ns
 
module parity_gen(D,P_even,P_odd);
input[3:0] D; //data
output P_even, P_odd; //Parity

assign P_even = D[0]^D[1]^D[2]^D[3];
assign P_odd =  ~(D[0]^D[1]^D[2]^D[3]);
endmodule
