.title <nem_ohmux_invd2_2i_8b.sp>
.include tsmc40inc.sp
.include nem_ohmux_2i_8b.sp
.global VDD VSNEM VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_invd2_2i_8b I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 S0 S1 ZN_0 ZN_1 ZN_2 ZN_3 ZN_4 ZN_5 ZN_6 ZN_7 VDD VSNEM VSS
    Xmux I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 S0 S1 Z_0 Z_1 Z_2 Z_3 Z_4 Z_5 Z_6 Z_7 VDD VSNEM VSS nem_ohmux_2i_8b
    Xinv0 Z_0 ZN_0 VDD VSS INVD2BWP
    Xinv1 Z_1 ZN_1 VDD VSS INVD2BWP
    Xinv2 Z_2 ZN_2 VDD VSS INVD2BWP
    Xinv3 Z_3 ZN_3 VDD VSS INVD2BWP
    Xinv4 Z_4 ZN_4 VDD VSS INVD2BWP
    Xinv5 Z_5 ZN_5 VDD VSS INVD2BWP
    Xinv6 Z_6 ZN_6 VDD VSS INVD2BWP
    Xinv7 Z_7 ZN_7 VDD VSS INVD2BWP
.ends
    