module fsm(
    input clk,
input reset,
input a,
output reg x,
output reg y);
reg [2:0] state,nextstate;

parameter s0=0;
parameter s1=1;
parameter s2=2;
parameter s3=3;
parameter s4=4;

always @(posedge clk,posedge reset)
    if(reset) state<= s0;
    else  state<=nextstate;
    
always @(state,a)
case (state)
   s0: begin
   x = a ? 0 : 0;
   y = a ? 0 : 0;
   nextstate = a ? s3 : s1;
   end
   s1: begin
   x = a ? 0 : 1;
   y = a ? 0 : 0;
   nextstate = a ? s3 : s2;
   end
   s2: begin
   x = a ? 0 : 1;
   y = a ? 0 : 1;
   nextstate = a ? s3 : s2;
   end
   s3: begin
   x = a ? 1 : 0;
   y = a ? 0 : 0;
   nextstate= a ? s4 : s1;
   end
   s4: begin
   x = a ? 1 : 0;
   y = a ? 1 : 0;
     nextstate = a ? s4 : s1;
   end 
   default: nextstate =s0;
         endcase
endmodule