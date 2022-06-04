module dec10_tb;
  reg [3:0] in;
  wire [9:0] out;
  
  dec10 dec(in, out);

  initial for (in = 0; in < 10; in++) #1 $display("%10b", out);
endmodule