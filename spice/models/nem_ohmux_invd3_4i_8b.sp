.title <nem_ohmux_invd3_4i_8b.sp>
.include tsmc40inc.sp
.include nem_ohmux_4i_8b.sp
.global VDD VSNEM VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_invd3_4i_8b I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 I2_0 I2_1 I2_2 I2_3 I2_4 I2_5 I2_6 I2_7 I3_0 I3_1 I3_2 I3_3 I3_4 I3_5 I3_6 I3_7 S0 S1 S2 S3 ZN_0 ZN_1 ZN_2 ZN_3 ZN_4 ZN_5 ZN_6 ZN_7 VDD VSNEM VSS
    Xmux I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 I2_0 I2_1 I2_2 I2_3 I2_4 I2_5 I2_6 I2_7 I3_0 I3_1 I3_2 I3_3 I3_4 I3_5 I3_6 I3_7 S0 S1 S2 S3 Z_0 Z_1 Z_2 Z_3 Z_4 Z_5 Z_6 Z_7 VDD VSNEM VSS nem_ohmux_4i_8b
    Xinv0 Z_0 ZN_0 VDD VSS INVD3BWP40
    Xinv1 Z_1 ZN_1 VDD VSS INVD3BWP40
    Xinv2 Z_2 ZN_2 VDD VSS INVD3BWP40
    Xinv3 Z_3 ZN_3 VDD VSS INVD3BWP40
    Xinv4 Z_4 ZN_4 VDD VSS INVD3BWP40
    Xinv5 Z_5 ZN_5 VDD VSS INVD3BWP40
    Xinv6 Z_6 ZN_6 VDD VSS INVD3BWP40
    Xinv7 Z_7 ZN_7 VDD VSS INVD3BWP40
.ends
    