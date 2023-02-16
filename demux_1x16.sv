module Demux1x16(input [3:0] opcode_rd, input [15:0] out, output reg [15:0] out_wb [15:0]);
  always @(*) begin
    out_wb [opcode_rd] = out;
    /*case (opcode)
      4'b0000 : begin out_wb[0] = out; out_wb[15:0] = out; end
      4'b0001 : begin out_wb[1] = out; out_wb[15:0] = out; end
      4'b0010 : begin out_wb[2] = out; out_wb[15:0] = out; end
      4'b0011 : begin out_wb[3] = out; out_wb[15:0] = out; end
      4'b0100 : begin out_wb[4] = out; out_wb[15:0] = out; end
      4'b0101 : begin out_wb[5] = out; out_wb[15:0] = out; end
      4'b0110 : begin out_wb[6] = out; out_wb[15:0] = out; end
      4'b0111 : begin out_wb[7] = out; out_wb[15:0] = out; end
      4'b1000 : begin out_wb[8] = out; out_wb[15:0] = out; end
      4'b1001 : begin out_wb[9] = out; out_wb[15:0] = out; end
      4'b1010 : begin out_wb[10] = out; out_wb[15:0] = out; end
      4'b1011 : begin out_wb[11] = out; out_wb[15:0] = out; end
      4'b1100 : begin out_wb[12] = out; out_wb[15:0] = out; end
      4'b1101 : begin out_wb[13] = out; out_wb[15:0] = out; end
      4'b1110 : begin out_wb[14] = out; out_wb[15:0] = out; end
      4'b1111 : begin out_wb[15] = out; out_wb[15:0] = out; end
    endcase  */ 
end
endmodule
