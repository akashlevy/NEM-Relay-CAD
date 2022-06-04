module dec4_tb;
  reg [2:0] S;
  wire [3:0] Z;
  
  dec4 dec(S[1:0], Z);

  initial for (S = 0; S < 4; S++) #1 $display("%4b", Z);
endmodule