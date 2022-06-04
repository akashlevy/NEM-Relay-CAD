module dec10 (
  input [3:0] S,
  output [9:0] Z
);

assign Z = 10'b1 << S;

endmodule