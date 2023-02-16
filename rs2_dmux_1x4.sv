module rs2dmux(rs2,f0,out_inp2);
  input [15:0] rs2;
  input [1:0] f0;
  output reg [15:0] out_inp2;
  always @(*) begin
    case(f0)
      2'b00 : out_inp2 = rs2;
      2'b01 : out_inp2 = rs2;
      2'b10 : out_inp2 = rs2;
      2'b11 : out_inp2 = rs2;
      
    //out_inp2 [f0] = rs2;
    endcase
  end
 endmodule
