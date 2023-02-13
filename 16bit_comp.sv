module bit_comparator(inp1,inp2,lt,gt,eq);
  input inp1,inp2;
  output lt,gt,eq;
  xnor G1(eq,inp1,inp2);
  and G2(gt,inp1,~inp2);
  and G3(lt,~inp1,inp2);
endmodule

module comp(inp1,inp2,ltb,gtb,eqb,lt,gt,eq);
  input inp1,inp2,ltb,gtb,eqb;
  output lt,gt,eq;
  wire t1,t2,t3;
  xnor G4(t1,inp1,inp2);
  and G5(t2,~inp1,inp2);
  and G6(t3,inp1,~inp2);
  and G7(eq,eqb,t1); 
  or G8(lt,t2,(ltb&t1));
  or G9(gt,t3,(gtb&t1));  
endmodule
///////////16 bit//////////
module comparator_16bit(inp1,inp2,lt,gt,eq);
  input [15:0] inp1,inp2;
  output lt,gt,eq;
  wire [15:0] l,g,e;
  bit_comparator C0(.inp1(inp1[0]),.inp2(inp2[0]),.lt(l[0]),.gt(g[0]),.eq(e[0]));
  comp C1(.inp1(inp1[1]),.inp2(inp2[1]),.ltb(l[0]),.gtb(g[0]),.eqb(e[0]),.lt(l[1]),.gt(g[1]),.eq(e[1]));
  comp C2(.inp1(inp1[2]),.inp2(inp2[2]),.ltb(l[1]),.gtb(g[1]),.eqb(e[1]),.lt(l[2]),.gt(g[2]),.eq(e[2]));
  comp //C3(.inp1(inp1[3]),.inp2(inp2[3]),.ltb(l[2]),.gtb(g[2]),.eqb(e[2]),.lt(lt),.gt(gt),.eq(eq))
  C3(.inp1(inp1[3]),.inp2(inp2[3]),.ltb(l[2]),.gtb(g[2]),.eqb(e[2]),.lt(l[3]),.gt(g[3]),.eq(e[3]));
 
  comp C4(.inp1(inp1[4]),.inp2(inp2[4]),.ltb(l[3]),.gtb(g[3]),.eqb(e[3]),.lt(l[4]),.gt(g[4]),.eq(e[4]));
  comp C5(.inp1(inp1[5]),.inp2(inp2[5]),.ltb(l[4]),.gtb(g[4]),.eqb(e[4]),.lt(l[5]),.gt(g[5]),.eq(e[5])); 
  comp C6(.inp1(inp1[6]),.inp2(inp2[6]),.ltb(l[5]),.gtb(g[5]),.eqb(e[5]),.lt(l[6]),.gt(g[6]),.eq(e[6]));
  comp C7(.inp1(inp1[7]),.inp2(inp2[7]),.ltb(l[6]),.gtb(g[6]),.eqb(e[6]),.lt(l[7]),.gt(g[7]),.eq(e[7]));
  comp C8(.inp1(inp1[8]),.inp2(inp2[8]),.ltb(l[7]),.gtb(g[7]),.eqb(e[7]),.lt(l[8]),.gt(g[8]),.eq(e[8])); 
  comp C9(.inp1(inp1[9]),.inp2(inp2[9]),.ltb(l[8]),.gtb(g[8]),.eqb(e[8]),.lt(l[9]),.gt(g[9]),.eq(e[9])); 
  comp C10(.inp1(inp1[10]),.inp2(inp2[10]),.ltb(l[9]),.gtb(g[9]),.eqb(e[9]),.lt(l[10]),.gt(g[10]),.eq(e[10]));
  comp
  C11(.inp1(inp1[11]),.inp2(inp2[11]),.ltb(l[10]),.gtb(g[10]),.eqb(e[10]),.lt(l[11]),.gt(g[11]),.eq(e[11]));
  comp C12(.inp1(inp1[12]),.inp2(inp2[12]),.ltb(l[11]),.gtb(g[11]),.eqb(e[11]),.lt(l[12]),.gt(g[12]),.eq(e[12]));
  comp
  C13(.inp1(inp1[13]),.inp2(inp2[13]),.ltb(l[12]),.gtb(g[12]),.eqb(e[12]),.lt(l[13]),.gt(g[13]),.eq(e[13]));
  comp C14(.inp1(inp1[14]),.inp2(inp2[14]),.ltb(l[13]),.gtb(g[13]),.eqb(e[13]),.lt(l[14]),.gt(g[14]),.eq(e[14]));
  comp C15(.inp1(inp1[15]),.inp2(inp2[15]),.ltb(l[14]),.gtb(g[14]),.eqb(e[14]),.lt(lt),.gt(gt),.eq(eq));
endmodule
