`include "design.sv"
module top;
  wire [15:0] out_wb,out;
  reg [15:0] inp1, inp2;
  reg [3:0] opcode;
  reg [1:0] f0;
  reg cin,bin;
  
  //top_cpu dut(f0,opcode,inp1,inp2,cin,bin,out,out_wb);
  top_cpu dut(f0,opcode,inp1,inp2,cin,bin,out,out_wb);
  initial begin
    //inp1 = $urandom;
    //inp2 = $urandom;
    //opcode = $urandom;
    //f0 = $urandom;
    //cin = $urandom;
    //bin = $urandom;
   #10 inp1 = 120;
    inp2 = 10;
    opcode = 4'b0001; //opcode_for demux_selection
    cin = 0;  //carry_in
    bin = 0;
    f0 = 2'b00;  //mul_select_line
    
    //inp1 = 16'b0110100000000000;
    //inp2 = 16'b1110000000000000;
    $monitor("f0 %0b opcode %0b inp1 %0d inp2 %0d cin %0d bin %0d out %0d out_wb %0d", f0,opcode,$signed(inp1),$signed(inp2),$signed(cin),$signed(bin),$signed(out),$signed(out_wb));
    #20 inp1 = 120;
    inp2 = 10;
    opcode = 4'b0001; //opcode_for demux_selection
    cin = 0;  //carry_in
    bin = 0;
    f0 = 2'b01;  //mul_select_line
    
    //inp1 = 16'b0110100000000000;
    //inp2 = 16'b1110000000000000;
    $monitor("f0 %0b opcode %0b inp1 %0d inp2 %0d cin %0d bin %0d out %0d out_wb %0d", f0,opcode,$signed(inp1),$signed(inp2),$signed(cin),$signed(bin),$signed(out),$signed(out_wb));
    #30 inp1 = 120;
    inp2 = 10;
    opcode = 4'b0001; //opcode_for demux_selection
    cin = 0;  //carry_in
    bin = 0;
    f0 = 2'b10;  //mul_select_line
    
    //inp1 = 16'b0110100000000000;
    //inp2 = 16'b1110000000000000;
    $monitor("f0 %0b opcode %0b inp1 %0d inp2 %0d cin %0d bin %0d out %0d out_wb %0d", f0,opcode,$signed(inp1),$signed(inp2),$signed(cin),$signed(bin),$signed(out),$signed(out_wb));
    #40 inp1 = 120;
    inp2 = 10;
    opcode = 4'b0001; //opcode_for demux_selection
    cin = 0;  //carry_in
    bin = 0;
    f0 = 2'b11;  //mul_select_line
    
    //inp1 = 16'b0110100000000000;
    //inp2 = 16'b1110000000000000;
    $monitor("f0 %0b opcode %0b inp1 %0d inp2 %0d cin %0d bin %0d out %0d out_wb %0d", f0,opcode,$signed(inp1),$signed(inp2),$signed(cin),$signed(bin),$signed(out),$signed(out_wb));
    end
endmodule
    
