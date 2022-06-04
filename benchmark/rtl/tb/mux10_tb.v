module mux10_tb;
  reg [3:0] S;
  reg [7:0] I0;
  reg [7:0] I1;
  reg [7:0] I2;
  reg [7:0] I3;
  reg [7:0] I4;
  reg [7:0] I5;
  reg [7:0] I6;
  reg [7:0] I7;
  reg [7:0] I8;
  reg [7:0] I9;
  wire [7:0] Z;
  
  mux10 mux(S, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, Z);

  initial begin
    #1
    S = 0;
    I0 = 1;
    I1 = 12;
    I2 = 51;
    I3 = 47;
    I4 = 22;
    I5 = 17;
    I6 = 83;
    I7 = 104;
    I8 = 7;
    I9 = 21;
    #1
    $display(Z);
    
    S = 1;
    #1
    $display(Z);
    
    S = 2;
    #1
    $display(Z);
    
    S = 3;
    #1
    $display(Z);
    
    S = 4;
    #1
    $display(Z);
    
    S = 5;
    #1
    $display(Z);
    
    S = 6;
    #1
    $display(Z);
    
    S = 7;
    #1
    $display(Z);
    
    S = 8;
    #1
    $display(Z);
    
    S = 9;
    #1
    $display(Z);
    
    S = 10;
    #1
    $display(Z);
    
    S = 11;
    #1
    $display(Z);
    
    S = 12;
    #1
    $display(Z);
    
    S = 13;
    #1
    $display(Z);
    
    S = 14;
    #1
    $display(Z);
    
    S = 15;
    #1
    $display(Z);
  end
endmodule