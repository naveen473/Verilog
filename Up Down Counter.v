module updowncounter(clk,cntrl,rst,count);
  input clk,cntrl,rst; // if cntrl = 1 , counts UP else DOWN
  output reg [3:0] count;
  always @ (posedge clk, posedge rst)
    begin
      if(rst)
        count <= 0 ;
      else if (cntrl)
         count <= count + 1;
      else 
        count <= count - 1;
    end