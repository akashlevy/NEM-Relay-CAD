/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Jun  4 06:42:45 2022
/////////////////////////////////////////////////////////////


module mux2 ( S, I0, I1, Z );
  input [0:0] S;
  input [7:0] I0;
  input [7:0] I1;
  output [7:0] Z;
  wire   n2;

  INVD1BWP40 U10 ( .I(S[0]), .ZN(n2) );
  AO22D1BWP40 U11 ( .A1(S[0]), .A2(I1[0]), .B1(n2), .B2(I0[0]), .Z(Z[0]) );
  AO22D1BWP40 U12 ( .A1(S[0]), .A2(I1[6]), .B1(n2), .B2(I0[6]), .Z(Z[6]) );
  AO22D1BWP40 U13 ( .A1(S[0]), .A2(I1[5]), .B1(n2), .B2(I0[5]), .Z(Z[5]) );
  AO22D1BWP40 U14 ( .A1(S[0]), .A2(I1[4]), .B1(n2), .B2(I0[4]), .Z(Z[4]) );
  AO22D1BWP40 U15 ( .A1(S[0]), .A2(I1[7]), .B1(n2), .B2(I0[7]), .Z(Z[7]) );
  AO22D1BWP40 U16 ( .A1(S[0]), .A2(I1[3]), .B1(n2), .B2(I0[3]), .Z(Z[3]) );
  AO22D1BWP40 U17 ( .A1(S[0]), .A2(I1[2]), .B1(n2), .B2(I0[2]), .Z(Z[2]) );
  AO22D1BWP40 U18 ( .A1(S[0]), .A2(I1[1]), .B1(n2), .B2(I0[1]), .Z(Z[1]) );
endmodule

