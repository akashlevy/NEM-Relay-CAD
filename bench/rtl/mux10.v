module mux10 (
  input [3:0] S,
  input [7:0] I0,
  input [7:0] I1,
  input [7:0] I2,
  input [7:0] I3,
  input [7:0] I4,
  input [7:0] I5,
  input [7:0] I6,
  input [7:0] I7,
  input [7:0] I8,
  input [7:0] I9,
  output reg [7:0] Z
);

always @(*) begin
  case (S)
    4'd0: Z = I0;
    4'd1: Z = I1;
    4'd2: Z = I2;
    4'd3: Z = I3;
    4'd4: Z = I4;
    4'd5: Z = I5;
    4'd6: Z = I6;
    4'd7: Z = I7;
    4'd8: Z = I8;
    4'd9: Z = I9;
    default: Z = 0;
  endcase
end

endmodule