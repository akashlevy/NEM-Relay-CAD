module dec4 (
  input [1:0] in,
  output [3:0] out
);

assign out = 4'b1 << in;

endmodule