`include "add.sv"
`include "sub.sv"
`include "mul.sv"
`include "div.sv"
`include "mux_4x1.sv"
`include "dmux_1x16.sv"
`include "rs1_dmux_1x4.sv"
`include "rs2_dmux_1x4.sv"
module top_cpu(f0,opcode_rd,rs1,rs2,cin,bin,out_wb);
  input [1:0] f0;
  input [3:0] opcode_rd;
  input [15:0] rs1,rs2;
  //input [15:0] inp1,inp2;
  input cin,bin;
  //output reg [15:0]out;
  output reg [15:0] out_wb [15:0];
  wire [15:0] out_inp1;
  wire [15:0] out_inp2;
  
  wire [15:0] sum, diff, product , q , out,inp1,inp2;
  /////all blocks instantiation/////////
  rs1dmux a1(rs1,f0,out_inp1);
  rs2dmux a2(rs2,f0,out_inp2);
  full_adder_16 fu1(.inp1(out_inp1), .inp2(out_inp2), .cin(cin),.sum(sum), .cout(cout));
  full_sub_16 fu2(.inp1(out_inp1), .inp2(out_inp2),.bin(bin),.diff(diff),.borrow(borrow));
  mul_16 fu3(.inp1(out_inp1), .inp2(out_inp2),.product(product));
  div_16 fu4(.inp1(out_inp1), .inp2(out_inp2),.q(q),.r(r));
  
  mux4x1 mu5(f0, sum, diff, product, q, out);
  Demux1x16 dm6(opcode_rd,out, out_wb);
  
  always@(*) begin
      if(out>65536)
        $display("exception size is more than 16 bit");
    end
 
endmodule
