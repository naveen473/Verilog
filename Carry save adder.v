module carrysave(p0,p1,p2,p3,p4,p5,s,c,a,b);
output [5:0]p0,p1,p2,p3,p4,p5;
output [10:0]s;
output [7:0]c;
input  [5:0]a,b;
wire d,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e13,e14,e15,e16,e17;

assign p0=b[0]?a:0;
assign p1=b[1]?a:0;
assign p2=b[2]?a:0;
assign p3=b[3]?a:0;
assign p4=b[4]?a:0;
assign p5=b[5]?a:0;
assign s[0]=p0[0];

HA h1(s[1],d,p0[1],p1[0]);
HA h2(e5,d5,p1[5],p2[4]);
FA m1(e1,d1,p0[2],p1[1],p2[0]);
FA m2(e2,d2,p0[3],p1[2],p2[1]);
FA m3(e3,d3,p0[4],p1[3],p2[2]);
FA m4(e4,d4,p0[5],p1[4],p2[3]);

HA h3(e6,d6,p3[1],p4[0]);
HA h4(e11,d11,p4[5],p5[4]);
FA m5(e7,d7,p3[2],p4[1],p5[0]);
FA m6(e8,d8,p3[3],p4[2],p5[1]);
FA m7(e9,d9,p3[4],p4[3],p5[2]);
FA m8(e10,d10,p3[5],p4[4],p5[3]);

HA h5(s[2],d12,d,e1);
FA m9(e13,d13,d1,e2,p3[0]);
FA m10(e14,d14,d2,e3,e6);
FA m11(e15,d15,d3,e4,e7);
FA m12(e16,d16,d4,e5,e8);
FA m13(e17,d17,d5,e6,p2[5]);


HA h6(s[3],c[0],d12,e13);
HA h7(s[4],c[1],d13,e14);
HA h8(s[9],c[6],d10,e11);
HA h9(s[10],c[7],d11,p5[5]);
FA m14(s[5],c[2],d6,d14,e15);
FA m15(s[6],c[3],d7,d15,e16);
FA m16(s[7],c[4],d8,d16,e17);
FA m17(s[8],c[5],d9,d17,e10);
endmodule

