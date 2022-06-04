module dec4 (
  input [1:0] S,
  output [3:0] Z
);

assign Z = 4'b1 << S;

endmodule