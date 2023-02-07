`include "add.sv"
`include "sub.sv"
`include "mul.sv"
`include "div.sv"
`include "mux_4x1.sv"
`include "demux_1x16.sv"
module top_cpu(f0,opcode,inp1,inp2,cin,bin,out,out_wb
              );
  input [1:0] f0;
  input [3:0] opcode;
  input [15:0] inp1,inp2;
  input cin,bin;
  output reg [15:0]out,out_wb,r;
  wire [15:0] sum, diff, product , q ;
  
  
  /////all blocks instantiation/////////
  full_adder_16 fu1(inp1, inp2, cin,sum, cout);
  full_sub_16 fu2(inp1,inp2,bin,diff,borrow);
  mul_16 fu3(inp1,inp2,product);
  div_16 fu4(inp1,inp2,q,r);
  mux4x1 mu5(f0, sum, diff, product, q, out);
  Demux1x16 dm6(opcode,out, out_wb);
  always@(*) begin
      if(out>65536)
        $display("exception size is more than 16 bit");
    end
 
endmodule
