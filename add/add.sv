`include "add.v"
module tb;
  wire  [15:0] sum;
  wire  [15:0]cout;
  reg [15:0] inp1, inp2;
  reg cin;
  full_adder_16 dut(inp1,inp2,cin,sum,cout);
  initial begin
    inp1 = 16'b1000000010;
    inp2 = 16'b11;
   //inp1 = $urandom;
   //inp2 = $urandom;
   //cin = $urandom;
    cin = 0;
    $monitor("inp1 %0d inp2 %0d cin %0d cout %0d sum %0d", inp1,inp2,cin,cout,sum);
    end
endmodule

