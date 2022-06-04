/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03
// Date      : Fri Jun  3 23:26:52 2022
/////////////////////////////////////////////////////////////


module dec2 ( in, out );
  output [1:0] out;
  input in;
  wire   in;
  assign out[1] = in;

  INVD0BWP40 U3 ( .I(in), .ZN(out[0]) );
endmodule

