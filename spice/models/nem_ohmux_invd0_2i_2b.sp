.title <nem_ohmux_invd0_2i_2b.sp>
.include tsmc40inc.sp
.include nem_ohmux_2i_2b.sp
.global VDD VB VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_invd0_2i_2b I0_0 I0_1 I1_0 I1_1 S0 S1 ZN_0 ZN_1 VDD VB VSS
    Xmux I0_0 I0_1 I1_0 I1_1 S0 S1 Z_0 Z_1 VDD VB VSS nem_ohmux_2i_2b
    Xinv1 Z_1 ZN_1 VDD VSS INVD0BWP
    Xinv1 Z_1 ZN_1 VDD VSS INVD0BWP
.ends
    