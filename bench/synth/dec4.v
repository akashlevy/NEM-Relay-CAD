/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Jun  4 06:44:23 2022
/////////////////////////////////////////////////////////////


module dec4 ( S, Z );
  input [1:0] S;
  output [3:0] Z;
  wire   \ash_1/n9 , \ash_1/n8 , \ash_1/n7 , \ash_1/n1 , n3, n4;
  assign Z[3] = \ash_1/n9 ;
  assign Z[2] = \ash_1/n8 ;
  assign Z[1] = \ash_1/n7 ;
  assign Z[0] = \ash_1/n1 ;

  NR2D0BWP40 U9 ( .A1(S[1]), .A2(S[0]), .ZN(\ash_1/n1 ) );
  INVD0BWP40 U10 ( .I(S[1]), .ZN(n3) );
  NR2D0BWP40 U11 ( .A1(S[0]), .A2(n3), .ZN(\ash_1/n8 ) );
  INVD0BWP40 U12 ( .I(S[0]), .ZN(n4) );
  NR2D0BWP40 U13 ( .A1(n3), .A2(n4), .ZN(\ash_1/n9 ) );
  NR2D0BWP40 U14 ( .A1(S[1]), .A2(n4), .ZN(\ash_1/n7 ) );
endmodule

