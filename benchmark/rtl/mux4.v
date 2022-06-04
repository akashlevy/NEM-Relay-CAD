module mux4 (
  input [1:0] S,
  input [7:0] I0,
  input [7:0] I1,
  input [7:0] I2,
  input [7:0] I3,
  output reg [7:0] Z
);

always @(*) begin
  case (S)
    2'd0: Z = I0;
    2'd1: Z = I1;
    2'd2: Z = I2;
    2'd3: Z = I3;
  endcase
end

endmodule