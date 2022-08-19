module rip(s,cout,a,b,cin);
// module for 4-bit Ripple carry adder
  input [3:0]a;
  input [3:0]b;
  input cin;
  output cout;
  output [3:0]s;
  wire c2,c3,c4,cout;
  fa m1(s[0],c2,a[0],b[0],cin);
  fa m2(s[1],c3,a[1],b[1],c2);
  fa m3(s[2],c4,a[2],b[2],c3);
  fa m4(s[3],cout,a[3],b[3],c4);
endmodule

module fa(s,cout,a,b,cin);
//sub module for Full adder
input a,b,cin;
output s,cout;
wire w1,w2,w3;
ha m1(w1,w2,a,b);
ha m2(s,w3,w1,cin);
or m3(cout,w2,w3);
endmodule

module ha(s,cout,a,b);
 //sub module for Half adder
  input a,b;
  output s,cout;
  xor m1(s,a,b);
  and m2(cout,a,b);
endmodule