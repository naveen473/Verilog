module uniformcarryadder(s0,s1,s2,i0,i1,i2,i3,i4,i5);
input [3:0]  i0,i1,i2,i3,i4,i5;
output [3:0] s0,s1,s2;
wire[3:0] w0,w1,w2,w3,w4,w5;
wire w6,w7;
adder fa1(s0,s1,c0,c1,i0,i1);
adder fa2(s2,s3,c0,c2,i2,i3);
adder fa3(s4,s5,c4,c5,i4,i5);

mux m1(cc0,ss0,s0,c0,w0,w1);
mux m2(cc1,ss1,s2,c2,w2,w3,w6);
mux m3(cc2,ss2,s4,c4,w4,w5,w7);
endmodule

module adder(vs1,vvs1,vc0,vvc0,a,b);
input [3:0] a,b;
output [3:0] vc0,vs1;
output [3:0]vvc0,vvs1;
assign {vc0,vvs0}=a+b;
assign {vc1,vvs1}=a+b+1;
endmodule

module mux(cp,sum,s0,s1,c0,c1,cin);
input [3:0] s0,s1;
input c0,c1,cin;
output [3:0] cp,sum;
assign {cp,sum}= cin? {c0,s0}:{c1,s1};

endmodule
