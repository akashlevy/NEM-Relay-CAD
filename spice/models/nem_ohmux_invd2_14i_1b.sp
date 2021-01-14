.title <nem_ohmux_invd2_14i_1b.sp>
.include tsmc40inc.sp
.include nem_ohmux_14i_1b.sp
.global VDD VSNEM VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_invd2_14i_1b I0_0 I1_0 I2_0 I3_0 I4_0 I5_0 I6_0 I7_0 I8_0 I9_0 I10_0 I11_0 I12_0 I13_0 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 S12 S13 ZN_0 VDD VSNEM VSS
    Xmux I0_0 I1_0 I2_0 I3_0 I4_0 I5_0 I6_0 I7_0 I8_0 I9_0 I10_0 I11_0 I12_0 I13_0 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 S12 S13 Z_0 VDD VSNEM VSS nem_ohmux_14i_1b
    Xinv0 Z_0 ZN_0 VDD VSS INVD2BWP40
.ends
    