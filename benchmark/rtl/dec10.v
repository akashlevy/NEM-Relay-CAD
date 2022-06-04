module dec10 (
  input [3:0] in,
  output [9:0] out
);

assign out = 10'b1 << in;

endmodule