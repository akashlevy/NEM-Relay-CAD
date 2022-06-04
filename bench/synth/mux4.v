/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sat Jun  4 06:43:07 2022
/////////////////////////////////////////////////////////////


module mux4 ( S, I0, I1, I2, I3, Z );
  input [1:0] S;
  input [7:0] I0;
  input [7:0] I1;
  input [7:0] I2;
  input [7:0] I3;
  output [7:0] Z;
  wire   n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52;

  NR2D0BWP40 U31 ( .A1(S[1]), .A2(S[0]), .ZN(n48) );
  INVD0BWP40 U32 ( .I(S[1]), .ZN(n32) );
  NR2D0BWP40 U33 ( .A1(S[0]), .A2(n32), .ZN(n47) );
  AOI22D0BWP40 U34 ( .A1(n48), .A2(I0[0]), .B1(n47), .B2(I2[0]), .ZN(n34) );
  INVD0BWP40 U35 ( .I(S[0]), .ZN(n31) );
  NR2D0BWP40 U36 ( .A1(S[1]), .A2(n31), .ZN(n50) );
  NR2D0BWP40 U37 ( .A1(n32), .A2(n31), .ZN(n49) );
  AOI22D0BWP40 U38 ( .A1(n50), .A2(I1[0]), .B1(n49), .B2(I3[0]), .ZN(n33) );
  ND2D0BWP40 U39 ( .A1(n34), .A2(n33), .ZN(Z[0]) );
  AOI22D0BWP40 U40 ( .A1(n48), .A2(I0[6]), .B1(n47), .B2(I2[6]), .ZN(n36) );
  AOI22D0BWP40 U41 ( .A1(n50), .A2(I1[6]), .B1(n49), .B2(I3[6]), .ZN(n35) );
  ND2D0BWP40 U42 ( .A1(n36), .A2(n35), .ZN(Z[6]) );
  AOI22D0BWP40 U43 ( .A1(n48), .A2(I0[5]), .B1(n47), .B2(I2[5]), .ZN(n38) );
  AOI22D0BWP40 U44 ( .A1(n50), .A2(I1[5]), .B1(n49), .B2(I3[5]), .ZN(n37) );
  ND2D0BWP40 U45 ( .A1(n38), .A2(n37), .ZN(Z[5]) );
  AOI22D0BWP40 U46 ( .A1(n48), .A2(I0[4]), .B1(n47), .B2(I2[4]), .ZN(n40) );
  AOI22D0BWP40 U47 ( .A1(n50), .A2(I1[4]), .B1(n49), .B2(I3[4]), .ZN(n39) );
  ND2D0BWP40 U48 ( .A1(n40), .A2(n39), .ZN(Z[4]) );
  AOI22D0BWP40 U49 ( .A1(n48), .A2(I0[7]), .B1(n47), .B2(I2[7]), .ZN(n42) );
  AOI22D0BWP40 U50 ( .A1(n50), .A2(I1[7]), .B1(n49), .B2(I3[7]), .ZN(n41) );
  ND2D0BWP40 U51 ( .A1(n42), .A2(n41), .ZN(Z[7]) );
  AOI22D0BWP40 U52 ( .A1(n48), .A2(I0[3]), .B1(n47), .B2(I2[3]), .ZN(n44) );
  AOI22D0BWP40 U53 ( .A1(n50), .A2(I1[3]), .B1(n49), .B2(I3[3]), .ZN(n43) );
  ND2D0BWP40 U54 ( .A1(n44), .A2(n43), .ZN(Z[3]) );
  AOI22D0BWP40 U55 ( .A1(n48), .A2(I0[2]), .B1(n47), .B2(I2[2]), .ZN(n46) );
  AOI22D0BWP40 U56 ( .A1(n50), .A2(I1[2]), .B1(n49), .B2(I3[2]), .ZN(n45) );
  ND2D0BWP40 U57 ( .A1(n46), .A2(n45), .ZN(Z[2]) );
  AOI22D0BWP40 U58 ( .A1(n48), .A2(I0[1]), .B1(n47), .B2(I2[1]), .ZN(n52) );
  AOI22D0BWP40 U59 ( .A1(n50), .A2(I1[1]), .B1(n49), .B2(I3[1]), .ZN(n51) );
  ND2D0BWP40 U60 ( .A1(n52), .A2(n51), .ZN(Z[1]) );
endmodule

