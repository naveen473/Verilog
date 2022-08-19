module bcdadd(a,b,cin,s,cout);  //Main module of one digit BCD adder
  input [3:0]a;
  input [3:0]b;
  input cin;
  output[3:0]s;
  output cout;
  wire [3:0]w;
  wire y,c0,c1,c2,c3,c4,c5;
  fulladd m1(a[0],b[0],cin,w[0],c0);
  fulladd m2(a[1],b[1],c0,w[1],c1);
  fulladd m3(a[2],b[2],c1,w[2],c2);
  fulladd m4(a[3],b[3],c2,w[3],c3);
  assign y=c3|(w[3]&(w[2]|w[1]));
  halfadd m5(w[1],y,s[1],c4);
  fulladd m6(w[2],y,c4,s[2],c5);
  halfadd m7(w[3],c5,s[3],cout);
  assign s[0]=w[0];
endmodule
                                                      
module fulladd(a,b,cin,s,cout); //submodule for fulladder
  input a,b;
  input cin;
  output s;
  output cout;
  wire w1,w2,w3;
  halfadd g1(a,b,w1,w2);
  halfadd g2(w1,cin,s,w3);
  assign cout=w3|w2;
endmodule

module halfadd(a,b,s,cout);  //submodule for halfadder
  input a,b;
  output s,cout;
assign s=a^b;
assign cout=a&b;
endmodule