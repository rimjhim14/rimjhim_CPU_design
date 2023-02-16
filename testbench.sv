module tb;
  wire [15:0] out;
  wire [15:0] out_wb [15:0];
  //reg [15:0] inp1, inp2;
  reg [3:0] opcode_rd;
  reg [15:0] rs1,rs2;
  reg [1:0] f0;
  reg cin,bin;
  // wire [15:0] out_inp1;
  // wire [15:0] out_inp2;
  
  //top_cpu dut(f0,opcode,inp1,inp2,cin,bin,out,out_wb);
  top_cpu dut(f0,opcode_rd,rs1,rs2,cin,bin,out_wb
              );
  initial begin
    
    rs1 = 120;
    rs2 = 10;
    opcode_rd = 4'b0011; //opcode_for demux_selection
    cin = 0;  //carry_in
    bin = 0;
    f0 = 2'b00;  //mul_select_line
    
    $monitor("f0 %0b opcode_rd %0b  rs1 %0d rs2 %0d cin %0d bin %0d  out %0d out_wb %0p", f0,opcode_rd,rs1,rs2,cin,bin,out,out_wb);
    end
endmodule
