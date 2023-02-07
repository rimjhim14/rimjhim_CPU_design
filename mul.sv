module mul_16(inp1,inp2,product);
  //parameter N=16;
  input [15:0] inp1, inp2;
  //input Ci;
 // output reg [N+15:0] product;
  output reg [15:0] product;
  wire [15:0] m0;
  wire [16:0] m1;
  wire [17:0] m2;
  wire [18:0] m3;
  wire [19:0] m4;
  wire [20:0] m5;
  wire [21:0] m6;
  wire [22:0] m7;
  wire [23:0] m8;
  wire [24:0] m9;
  wire [25:0] m10;
  wire [26:0] m11;
  wire [27:0] m12;
  wire [28:0] m13;
  wire [29:0] m14;
  wire [30:0] m15;
 
  wire [31:0] s1, s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;
  
  assign m0 = {16{inp1[0]}} & inp2[15:0];
  assign m1 = {16{inp1[1]}} & inp2[15:0];
  assign m2 = {16{inp1[2]}} & inp2[15:0];
  assign m3 = {16{inp1[3]}} & inp2[15:0];
  assign m4 = {16{inp1[4]}} & inp2[15:0];
  assign m5 = {16{inp1[5]}} & inp2[15:0];
  assign m6 = {16{inp1[6]}} & inp2[15:0];
  assign m7 = {16{inp1[7]}} & inp2[15:0];
  assign m8 = {16{inp1[8]}} & inp2[15:0];
  assign m9 = {16{inp1[9]}} & inp2[15:0];
  assign m10 = {16{inp1[10]}} & inp2[15:0];
  assign m11 = {16{inp1[11]}} & inp2[15:0];
  assign m12 = {16{inp1[12]}} & inp2[15:0];
  assign m13 = {16{inp1[13]}} & inp2[15:0];
  assign m14 = {16{inp1[14]}} & inp2[15:0];
  assign m15 = {16{inp1[15]}} & inp2[15:0];
  
  assign s1 = m0 + (m1<<1);
  assign s2 = s1 + (m2<<2);
  assign s3 = s2 + (m3<<3);
  assign s4 = s3 + (m4<<4);
  assign s5 = s4 + (m5<<5);
  assign s6 = s5 + (m6<<6);
  assign s7 = s6 + (m7<<7);
  assign s8 = s7 + (m8<<8);
  assign s9 = s8 + (m9<<9);
  assign s10 = s9 + (m10<<10);
  assign s11 = s10 + (m11<<11);
  assign s12 = s11 + (m12<<12);
  assign s13 = s12 + (m13<<13);
  assign s14 = s13 + (m14<<14);
  assign s15 = s14 + (m15<<15);
  //assign s16 = s15 + (m16<<16);
  
  assign product = s15;
  
endmodule


