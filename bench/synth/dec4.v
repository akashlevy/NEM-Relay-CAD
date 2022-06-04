/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Fri Jun  3 23:27:37 2022
/////////////////////////////////////////////////////////////


module dec4 ( in, out );
  input [1:0] in;
  output [3:0] out;
  wire   \ash_1/n9 , \ash_1/n8 , \ash_1/n7 , \ash_1/n1 , n3, n4;
  assign out[3] = \ash_1/n9 ;
  assign out[2] = \ash_1/n8 ;
  assign out[1] = \ash_1/n7 ;
  assign out[0] = \ash_1/n1 ;

  NR2D0BWP40 U9 ( .A1(in[1]), .A2(in[0]), .ZN(\ash_1/n1 ) );
  INVD0BWP40 U10 ( .I(in[1]), .ZN(n3) );
  NR2D0BWP40 U11 ( .A1(in[0]), .A2(n3), .ZN(\ash_1/n8 ) );
  INVD0BWP40 U12 ( .I(in[0]), .ZN(n4) );
  NR2D0BWP40 U13 ( .A1(n3), .A2(n4), .ZN(\ash_1/n9 ) );
  NR2D0BWP40 U14 ( .A1(in[1]), .A2(n4), .ZN(\ash_1/n7 ) );
endmodule

