module div_16(inp1,inp2,q,r);
  output reg  [15:0] r;
  output reg  [15:0] q;
  input  [15:0] inp1, inp2;
  
  always @(inp1 or inp2 )begin
 q = inp1 / inp2;
 r = inp1 % inp2;
     end
endmodule

