.title <nem_ohmux_invd0_4i_4b.sp>
.include tsmc40inc.sp
.include nem_ohmux_4i_4b.sp
.global VDD VB VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_invd0_4i_4b I0_0 I0_1 I0_2 I0_3 I1_0 I1_1 I1_2 I1_3 I2_0 I2_1 I2_2 I2_3 I3_0 I3_1 I3_2 I3_3 S0 S1 S2 S3 ZN_0 ZN_1 ZN_2 ZN_3 VDD VB VSS
    Xmux I0_0 I0_1 I0_2 I0_3 I1_0 I1_1 I1_2 I1_3 I2_0 I2_1 I2_2 I2_3 I3_0 I3_1 I3_2 I3_3 S0 S1 S2 S3 Z_0 Z_1 Z_2 Z_3 VDD VB VSS nem_ohmux_4i_4b
    Xinv0 Z_0 ZN_0 VDD VSS INVD0BWP
    Xinv1 Z_1 ZN_1 VDD VSS INVD0BWP
    Xinv2 Z_2 ZN_2 VDD VSS INVD0BWP
    Xinv3 Z_3 ZN_3 VDD VSS INVD0BWP
.ends
    