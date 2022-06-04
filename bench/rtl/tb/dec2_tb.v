module dec2_tb;
  reg [1:0] S;
  wire [1:0] Z;
  
  dec2 dec(S[0:0], Z);

  initial for (S = 0; S < 2; S++) #1 $display("%4b", Z);
endmodule