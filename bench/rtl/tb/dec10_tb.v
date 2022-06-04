module dec10_tb;
  reg [3:0] S;
  wire [9:0] Z;
  
  dec10 dec(S, Z);

  initial for (S = 0; S < 10; S++) #1 $display("%10b", Z);
endmodule