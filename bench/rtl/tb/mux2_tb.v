module mux2_tb;
  reg [0:0] S;
  reg [7:0] I0;
  reg [7:0] I1;
  wire [7:0] Z;
  
  mux2 mux(S, I0, I1, Z);

  initial begin
    #1
    S = 0;
    I0 = 1;
    I1 = 12;
    #1
    $display(Z);
    
    #1
    S = 1;
    I0 = 1;
    I1 = 12;
    #1
    $display(Z);
  end
endmodule