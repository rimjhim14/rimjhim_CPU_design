module full_sub_16(inp1,inp2,bin,diff,borrow);
  //parameter N=16;
  input [15:0]inp1,inp2;
  input bin;
  output reg [15:0]diff;
  output reg borrow;
  wire b11,b12,b13;
  a4bitdiff af0(.inp1(inp1[3:0]),.inp2(inp2[3:0]),.bin(bin),.diff(diff[3:0]),.borrow(b11));
  a4bitdiff af1(.inp1(inp1[7:4]),.inp2(inp2[7:4]),.bin(b11),.diff(diff[7:4]),.borrow(b12));
  a4bitdiff af2(.inp1(inp1[11:8]),.inp2(inp2[11:8]),.bin(b12),.diff(diff[11:8]),.borrow(b13));
  a4bitdiff af3(.inp1(inp1[15:12]),.inp2(inp2[15:12]),.bin(b13),.diff(diff[15:12]),.borrow(borrow));
endmodule

//4 bit difftractor

module a4bitdiff(inp1,inp2,bin,diff,borrow);
  input [3:0]inp1,inp2;
  input bin;
  output reg [3:0]diff;
  output reg borrow;
  wire b1,b2,b3;
  fulldifftractor f0(.inp1(inp1[0]),.inp2(inp2[0]),.bin(bin),.diff(diff[0]),.borrow(b1));
  fulldifftractor f1(.inp1(inp1[1]),.inp2(inp2[1]),.bin(b1),.diff(diff[1]),.borrow(b2));
  fulldifftractor f2(.inp1(inp1[2]),.inp2(inp2[2]),.bin(b2),.diff(diff[2]),.borrow(b3));
  fulldifftractor f3(.inp1(inp1[3]),.inp2(inp2[3]),.bin(b3),.diff(diff[3]),.borrow(borrow));
endmodule
//full difftractor

module fulldifftractor(inp1,inp2,bin,diff,borrow);
  input inp1,inp2,bin;
  output reg diff,borrow;
  wire b,b1,diff1;
  Half_Subtractor h1(.inp1(inp1),.inp2(inp2),.borrow(b),.diff(diff1));
  Half_Subtractor h2(.inp1(diff1),.inp2(bin),.borrow(b1),.diff(diff));
  or last(borrow,b1,b);
endmodule
//half difftarctor
/*module Half_Subtractor(input inp1, inp2,output reg diff, borrow);
assign diff = inp1 ^ inp2;
assign borrow = ~inp1 & inp2;
endmodule*/
/////////xor_gate code/////
module xor_gate(a1, b1, c1);

input a1, b1;

output c1;

assign c1 = a1 ^ b1;

endmodule
/////and_gate_code////////
module and_gate(a2, b2, c2);

input a2, b2;

output c2;

assign c2 = a2 & b2;

endmodule
////////not_gate_code/////////
module not_gate(a3, b3);

input a3;

output b3;

assign b3 = ~ a3;

endmodule

//////half_sub//////////////
module Half_Subtractor(inp1, inp2, diff, borrow);

input inp1, inp2;

output diff, borrow;

wire x;

  xor_gate u1(inp1, inp2, diff);

  and_gate u2(x, inp2, borrow);

  not_gate u3(inp1, x);

endmodule



