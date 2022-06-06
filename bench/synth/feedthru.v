module feedthru (S, Z);
  input S;
  output [0:0] Z;
  assign Z[0] = S;
endmodule