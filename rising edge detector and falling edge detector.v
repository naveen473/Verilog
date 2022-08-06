module REDandFED(
    input clk,
    input a,
    input rst,
    output y,
    output z
    );
    reg c;
    always @(posedge clk,negedge rst)  
    begin 
    if (~rst)
        c<=1;
    else
        c<=a;
    end
    
    assign y=(~c&a);
    assign z=(c&~a&rst);
endmodule
