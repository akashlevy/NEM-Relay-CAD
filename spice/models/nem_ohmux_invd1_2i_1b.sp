.title <nem_ohmux_invd1_2i_1b.sp>
.include tsmc40inc.sp
.include nem_ohmux_2i_1b.sp
.global VDD VSNEM VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_invd1_2i_1b I0_0 I1_0 S0 S1 ZN_0 VDD VSNEM VSS
    Xmux I0_0 I1_0 S0 S1 Z_0 VDD VSNEM VSS nem_ohmux_2i_1b
    Xinv0 Z_0 ZN_0 VDD VSS INVD1BWP
.ends
    