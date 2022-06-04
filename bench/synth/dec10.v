/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Jun  4 06:44:41 2022
/////////////////////////////////////////////////////////////


module dec10 ( S, Z );
  input [3:0] S;
  output [9:0] Z;
  wire   n8, n9, n10, n11;

  NR4D0BWP40 U20 ( .A1(S[0]), .A2(S[2]), .A3(S[3]), .A4(S[1]), .ZN(Z[0]) );
  INVD0BWP40 U21 ( .I(S[2]), .ZN(n9) );
  IND3D0BWP40 U22 ( .A1(S[1]), .B1(S[3]), .B2(n9), .ZN(n8) );
  NR2D0BWP40 U23 ( .A1(S[0]), .A2(n8), .ZN(Z[8]) );
  INVD0BWP40 U24 ( .I(S[0]), .ZN(n11) );
  IND2D0BWP40 U25 ( .A1(S[3]), .B1(S[1]), .ZN(n10) );
  NR3D0BWP40 U26 ( .A1(n11), .A2(n9), .A3(n10), .ZN(Z[7]) );
  NR3D0BWP40 U27 ( .A1(S[0]), .A2(n9), .A3(n10), .ZN(Z[6]) );
  NR4D0BWP40 U28 ( .A1(S[3]), .A2(S[1]), .A3(n9), .A4(n11), .ZN(Z[5]) );
  NR2D0BWP40 U29 ( .A1(n11), .A2(n8), .ZN(Z[9]) );
  NR4D0BWP40 U30 ( .A1(S[0]), .A2(S[3]), .A3(S[1]), .A4(n9), .ZN(Z[4]) );
  NR3D0BWP40 U31 ( .A1(S[2]), .A2(n11), .A3(n10), .ZN(Z[3]) );
  NR3D0BWP40 U32 ( .A1(S[0]), .A2(S[2]), .A3(n10), .ZN(Z[2]) );
  NR4D0BWP40 U33 ( .A1(S[3]), .A2(S[2]), .A3(S[1]), .A4(n11), .ZN(Z[1]) );
endmodule

