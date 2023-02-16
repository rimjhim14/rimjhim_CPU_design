module rs1dmux(rs1,f0,out_inp1);
  input [15:0] rs1;
  input [1:0] f0;
  output reg [15:0] out_inp1;
  always @(*) begin
    case(f0)
      2'b00 : out_inp1 = rs1;
      2'b01 : out_inp1 = rs1;
      2'b10 : out_inp1 = rs1;
      2'b11 : out_inp1 = rs1;
      
    //out_inp2 [f0] = rs2;
    endcase
  end
endmodule
