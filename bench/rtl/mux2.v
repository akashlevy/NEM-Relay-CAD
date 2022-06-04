module mux2 (
  input [0:0] S,
  input [7:0] I0,
  input [7:0] I1,
  output reg [7:0] Z
);

always @(*) begin
  case (S)
    1'd0: Z = I0;
    1'd1: Z = I1;
  endcase
end

endmodule