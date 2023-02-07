module mux4x1( f0, sum, diff, product, q, out);
  input [1:0] f0;
  input [15:0] sum, diff, product, q;
  output reg [15:0] out;
  
  always@(*)begin
  case(f0)
  
    2'b00 : out = sum;
    2'b01 : out = diff;
    2'b10 : out = product;
    2'b11 : out = q;
  endcase
    end
endmodule

