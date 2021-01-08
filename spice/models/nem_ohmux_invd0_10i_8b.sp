.title <nem_ohmux_invd0_10i_8b.sp>
.include tsmc40inc.sp
.include nem_ohmux_10i_8b.sp
.global VDD VSNEM VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_invd0_10i_8b I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 I2_0 I2_1 I2_2 I2_3 I2_4 I2_5 I2_6 I2_7 I3_0 I3_1 I3_2 I3_3 I3_4 I3_5 I3_6 I3_7 I4_0 I4_1 I4_2 I4_3 I4_4 I4_5 I4_6 I4_7 I5_0 I5_1 I5_2 I5_3 I5_4 I5_5 I5_6 I5_7 I6_0 I6_1 I6_2 I6_3 I6_4 I6_5 I6_6 I6_7 I7_0 I7_1 I7_2 I7_3 I7_4 I7_5 I7_6 I7_7 I8_0 I8_1 I8_2 I8_3 I8_4 I8_5 I8_6 I8_7 I9_0 I9_1 I9_2 I9_3 I9_4 I9_5 I9_6 I9_7 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 ZN_0 ZN_1 ZN_2 ZN_3 ZN_4 ZN_5 ZN_6 ZN_7 VDD VSNEM VSS
    Xmux I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 I2_0 I2_1 I2_2 I2_3 I2_4 I2_5 I2_6 I2_7 I3_0 I3_1 I3_2 I3_3 I3_4 I3_5 I3_6 I3_7 I4_0 I4_1 I4_2 I4_3 I4_4 I4_5 I4_6 I4_7 I5_0 I5_1 I5_2 I5_3 I5_4 I5_5 I5_6 I5_7 I6_0 I6_1 I6_2 I6_3 I6_4 I6_5 I6_6 I6_7 I7_0 I7_1 I7_2 I7_3 I7_4 I7_5 I7_6 I7_7 I8_0 I8_1 I8_2 I8_3 I8_4 I8_5 I8_6 I8_7 I9_0 I9_1 I9_2 I9_3 I9_4 I9_5 I9_6 I9_7 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 Z_0 Z_1 Z_2 Z_3 Z_4 Z_5 Z_6 Z_7 VDD VSNEM VSS nem_ohmux_10i_8b
    Xinv0 Z_0 ZN_0 VDD VSS INVD0BWP
    Xinv1 Z_1 ZN_1 VDD VSS INVD0BWP
    Xinv2 Z_2 ZN_2 VDD VSS INVD0BWP
    Xinv3 Z_3 ZN_3 VDD VSS INVD0BWP
    Xinv4 Z_4 ZN_4 VDD VSS INVD0BWP
    Xinv5 Z_5 ZN_5 VDD VSS INVD0BWP
    Xinv6 Z_6 ZN_6 VDD VSS INVD0BWP
    Xinv7 Z_7 ZN_7 VDD VSS INVD0BWP
.ends
    