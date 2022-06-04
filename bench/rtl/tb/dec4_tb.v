module dec4_tb;
  reg [2:0] in;
  wire [3:0] out;
  
  dec4 dec(in[1:0], out);

  initial for (in = 0; in < 4; in++) #1 $display("%4b", out);
endmodule