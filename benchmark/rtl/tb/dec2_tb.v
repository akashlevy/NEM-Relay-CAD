module dec2_tb;
  reg [1:0] in;
  wire [1:0] out;
  
  dec2 dec(in[0], out);

  initial for (in = 0; in < 2; in++) #1 $display("%4b", out);
endmodule