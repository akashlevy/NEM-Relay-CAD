/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Jun  4 06:44:04 2022
/////////////////////////////////////////////////////////////


module dec2 ( S, Z );
  input [0:0] S;
  output [1:0] Z;
  wire   \S[0] ;
  assign Z[1] = \S[0] ;
  assign \S[0]  = S[0];

  INVD0BWP40 U3 ( .I(\S[0] ), .ZN(Z[0]) );
endmodule

