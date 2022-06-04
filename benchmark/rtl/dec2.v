module dec2 (
  input in,
  output [1:0] out
);

assign out = 2'b1 << in;

endmodule