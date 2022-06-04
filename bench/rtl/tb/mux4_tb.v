module mux4_tb;
  reg [1:0] S;
  reg [7:0] I0;
  reg [7:0] I1;
  reg [7:0] I2;
  reg [7:0] I3;
  wire [7:0] Z;
  
  mux4 mux(S, I0, I1, I2, I3, Z);

  initial begin
    #1
    S = 0;
    I0 = 1;
    I1 = 12;
    I2 = 51;
    I3 = 47;
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
  end
endmodule