module dec2 (
  input [0:0] S,
  output [1:0] Z
);

assign Z = 2'b1 << S;

endmodule