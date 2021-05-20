//****************************************************************************//
// Verilog models generated by SiliconSmart M-2017.03-2 build date: Apr 12, 2017 14:36:58. (SMSC-2) //
// Siliconsmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart //
// Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 3237        //
// Directory: /sim/akashl/NEM-Relay-CAD/liberty                               //
//                                                                            //
// File generated on Thu May 20 14:37:49 PDT 2021. (SMSC-3)                   //
//****************************************************************************//


`timescale 1ns/1ps

// udp_data_begin


primitive UDP_nems40tt_nem_ohmux_invd1_10i_8b_UDP_0( ZN, S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9 );
  output ZN;
  input S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9;
  table
  //S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9: ZN
    1  0  0  0  0  0  0  0  0  0  0  ?  ?  ?  ?  ?  ?  ?  ?  ?: 1;
    0  1  0  0  0  0  0  0  0  0  ?  0  ?  ?  ?  ?  ?  ?  ?  ?: 1;
    0  0  1  0  0  0  0  0  0  0  ?  ?  0  ?  ?  ?  ?  ?  ?  ?: 1;
    0  0  0  1  0  0  0  0  0  0  ?  ?  ?  0  ?  ?  ?  ?  ?  ?: 1;
    0  0  0  0  1  0  0  0  0  0  ?  ?  ?  ?  0  ?  ?  ?  ?  ?: 1;
    0  0  0  0  0  1  0  0  0  0  ?  ?  ?  ?  ?  0  ?  ?  ?  ?: 1;
    0  0  0  0  0  0  1  0  0  0  ?  ?  ?  ?  ?  ?  0  ?  ?  ?: 1;
    0  0  0  0  0  0  0  1  0  0  ?  ?  ?  ?  ?  ?  ?  0  ?  ?: 1;
    0  0  0  0  0  0  0  0  1  0  ?  ?  ?  ?  ?  ?  ?  ?  0  ?: 1;
    0  0  0  0  0  0  0  0  0  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  0: 1;
    1  0  0  0  0  0  0  0  0  0  1  ?  ?  ?  ?  ?  ?  ?  ?  ?: 0;
    0  1  0  0  0  0  0  0  0  0  ?  1  ?  ?  ?  ?  ?  ?  ?  ?: 0;
    0  0  1  0  0  0  0  0  0  0  ?  ?  1  ?  ?  ?  ?  ?  ?  ?: 0;
    0  0  0  1  0  0  0  0  0  0  ?  ?  ?  1  ?  ?  ?  ?  ?  ?: 0;
    0  0  0  0  1  0  0  0  0  0  ?  ?  ?  ?  1  ?  ?  ?  ?  ?: 0;
    0  0  0  0  0  1  0  0  0  0  ?  ?  ?  ?  ?  1  ?  ?  ?  ?: 0;
    0  0  0  0  0  0  1  0  0  0  ?  ?  ?  ?  ?  ?  1  ?  ?  ?: 0;
    0  0  0  0  0  0  0  1  0  0  ?  ?  ?  ?  ?  ?  ?  1  ?  ?: 0;
    0  0  0  0  0  0  0  0  1  0  ?  ?  ?  ?  ?  ?  ?  ?  1  ?: 0;
    0  0  0  0  0  0  0  0  0  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  1: 0;
    1  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    1  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    1  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    1  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    1  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    1  ?  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    1  ?  ?  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    1  ?  ?  ?  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    1  ?  ?  ?  ?  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    0  0  0  0  0  0  0  0  0  0  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  1  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  1  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  1  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  1  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  1  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  1  ?  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  1  ?  ?  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  1  ?  ?  ?  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  1  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  1  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  1  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  1  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  1  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  1  ?  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  1  ?  ?  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  1  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  1  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  1  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  1  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  1  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  1  ?  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  1  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  1  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  1  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  1  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  1  ?  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  ?  1  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  ?  1  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  ?  1  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  ?  1  ?  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  ?  ?  1  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  ?  ?  1  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  ?  ?  1  ?  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  ?  ?  ?  1  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  ?  ?  ?  1  ?  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
    ?  ?  ?  ?  ?  ?  ?  ?  1  1  ?  ?  ?  ?  ?  ?  ?  ?  ?  ?: x;
  endtable
endprimitive


`celldefine
module nem_ohmux_invd1_10i_8b_func( S0, S1, S2, S3, S4, S5, S6, S7, S8, S9 );
input S0, S1, S2, S3, S4, S5, S6, S7, S8, S9;

	UDP_nems40tt_nem_ohmux_invd1_10i_8b_UDP_0( ZN, S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


primitive UDP_nems40tt_nem_ohmux_invd1_2i_8b_UDP_0( ZN, S0, S1, I0, I1 );
  output ZN;
  input S0, S1, I0, I1;
  table
  //S0, S1, I0, I1: ZN
    1  0  0  ?: 1;
    0  1  ?  0: 1;
    1  0  1  ?: 0;
    0  1  ?  1: 0;
    1  1  ?  ?: x;
    0  0  ?  ?: x;
  endtable
endprimitive


`celldefine
module nem_ohmux_invd1_2i_8b_func( S0, S1 );
input S0, S1;

	UDP_nems40tt_nem_ohmux_invd1_2i_8b_UDP_0( ZN, S0, S1, I0, I1 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


primitive UDP_nems40tt_nem_ohmux_invd1_4i_8b_UDP_0( ZN, S0, S1, S2, S3, I0, I1, I2, I3 );
  output ZN;
  input S0, S1, S2, S3, I0, I1, I2, I3;
  table
  //S0, S1, S2, S3, I0, I1, I2, I3: ZN
    1  0  0  0  0  ?  ?  ?: 1;
    0  1  0  0  ?  0  ?  ?: 1;
    0  0  1  0  ?  ?  0  ?: 1;
    0  0  0  1  ?  ?  ?  0: 1;
    1  0  0  0  1  ?  ?  ?: 0;
    0  1  0  0  ?  1  ?  ?: 0;
    0  0  1  0  ?  ?  1  ?: 0;
    0  0  0  1  ?  ?  ?  1: 0;
    1  1  ?  ?  ?  ?  ?  ?: x;
    1  ?  1  ?  ?  ?  ?  ?: x;
    1  ?  ?  1  ?  ?  ?  ?: x;
    0  0  0  0  ?  ?  ?  ?: x;
    ?  1  1  ?  ?  ?  ?  ?: x;
    ?  1  ?  1  ?  ?  ?  ?: x;
    ?  ?  1  1  ?  ?  ?  ?: x;
  endtable
endprimitive


`celldefine
module nem_ohmux_invd1_4i_8b_func( S0, S1, S2, S3 );
input S0, S1, S2, S3;

	UDP_nems40tt_nem_ohmux_invd1_4i_8b_UDP_0( ZN, S0, S1, S2, S3, I0, I1, I2, I3 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module nem_ohmux_invd2_2i_8b_func( S0, S1 );
input S0, S1;

	UDP_nems40tt_nem_ohmux_invd1_2i_8b_UDP_0( ZN, S0, S1, I0, I1 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module nem_ohmux_invd2_4i_8b_func( S0, S1, S2, S3 );
input S0, S1, S2, S3;

	UDP_nems40tt_nem_ohmux_invd1_4i_8b_UDP_0( ZN, S0, S1, S2, S3, I0, I1, I2, I3 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module nem_ohmux_invd3_2i_8b_func( S0, S1 );
input S0, S1;

	UDP_nems40tt_nem_ohmux_invd1_2i_8b_UDP_0( ZN, S0, S1, I0, I1 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module nem_ohmux_invd3_4i_8b_func( S0, S1, S2, S3 );
input S0, S1, S2, S3;

	UDP_nems40tt_nem_ohmux_invd1_4i_8b_UDP_0( ZN, S0, S1, S2, S3, I0, I1, I2, I3 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module nem_ohmux_invd4_2i_8b_func( S0, S1 );
input S0, S1;

	UDP_nems40tt_nem_ohmux_invd1_2i_8b_UDP_0( ZN, S0, S1, I0, I1 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module nem_ohmux_invd4_4i_8b_func( S0, S1, S2, S3 );
input S0, S1, S2, S3;

	UDP_nems40tt_nem_ohmux_invd1_4i_8b_UDP_0( ZN, S0, S1, S2, S3, I0, I1, I2, I3 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module nem_ohmux_invd5_2i_8b_func( S0, S1 );
input S0, S1;

	UDP_nems40tt_nem_ohmux_invd1_2i_8b_UDP_0( ZN, S0, S1, I0, I1 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module nem_ohmux_invd5_4i_8b_func( S0, S1, S2, S3 );
input S0, S1, S2, S3;

	UDP_nems40tt_nem_ohmux_invd1_4i_8b_UDP_0( ZN, S0, S1, S2, S3, I0, I1, I2, I3 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module nem_ohmux_invd6_2i_8b_func( S0, S1 );
input S0, S1;

	UDP_nems40tt_nem_ohmux_invd1_2i_8b_UDP_0( ZN, S0, S1, I0, I1 );

endmodule
`endcelldefine
// udp_data_end
// udp_data_begin


`celldefine
module nem_ohmux_invd6_4i_8b_func( S0, S1, S2, S3 );
input S0, S1, S2, S3;

	UDP_nems40tt_nem_ohmux_invd1_4i_8b_UDP_0( ZN, S0, S1, S2, S3, I0, I1, I2, I3 );

endmodule
`endcelldefine
// udp_data_end
