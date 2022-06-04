/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Fri Jun  3 23:28:04 2022
/////////////////////////////////////////////////////////////


module dec10 ( in, out );
  input [3:0] in;
  output [9:0] out;
  wire   n8, n9, n10, n11;

  NR4D0BWP40 U20 ( .A1(in[0]), .A2(in[2]), .A3(in[3]), .A4(in[1]), .ZN(out[0])
         );
  INVD0BWP40 U21 ( .I(in[2]), .ZN(n9) );
  IND3D0BWP40 U22 ( .A1(in[1]), .B1(in[3]), .B2(n9), .ZN(n8) );
  NR2D0BWP40 U23 ( .A1(in[0]), .A2(n8), .ZN(out[8]) );
  INVD0BWP40 U24 ( .I(in[0]), .ZN(n11) );
  IND2D0BWP40 U25 ( .A1(in[3]), .B1(in[1]), .ZN(n10) );
  NR3D0BWP40 U26 ( .A1(n11), .A2(n9), .A3(n10), .ZN(out[7]) );
  NR3D0BWP40 U27 ( .A1(in[0]), .A2(n9), .A3(n10), .ZN(out[6]) );
  NR4D0BWP40 U28 ( .A1(in[3]), .A2(in[1]), .A3(n9), .A4(n11), .ZN(out[5]) );
  NR2D0BWP40 U29 ( .A1(n11), .A2(n8), .ZN(out[9]) );
  NR4D0BWP40 U30 ( .A1(in[0]), .A2(in[3]), .A3(in[1]), .A4(n9), .ZN(out[4]) );
  NR3D0BWP40 U31 ( .A1(in[2]), .A2(n11), .A3(n10), .ZN(out[3]) );
  NR3D0BWP40 U32 ( .A1(in[0]), .A2(in[2]), .A3(n10), .ZN(out[2]) );
  NR4D0BWP40 U33 ( .A1(in[3]), .A2(in[2]), .A3(in[1]), .A4(n11), .ZN(out[1])
         );
endmodule

