.title <nem_ohmux_invd0_10i_1b.sp>
.include tsmc40inc.sp
.include nem_ohmux_10i_1b.sp
.global VDD VB VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_invd0_10i_1b I0_0 I1_0 I2_0 I3_0 I4_0 I5_0 I6_0 I7_0 I8_0 I9_0 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 ZN_0 VDD VB VSS
    Xmux I0_0 I1_0 I2_0 I3_0 I4_0 I5_0 I6_0 I7_0 I8_0 I9_0 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 Z_0 VDD VB VSS nem_ohmux_10i_1b
    Xinv0 Z_0 ZN_0 VDD VSS INVD0BWP
.ends
    