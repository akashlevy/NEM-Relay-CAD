.title <nem_ohmux_2i_8b.sp>
.hdl nem_relay_8b.va
.include pex/nem_ohmux_invd1_2i_8b.pex.netlist

.global VDD VSNEM VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_2i_8b I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 S0 S1 Z_0 Z_1 Z_2 Z_3 Z_4 Z_5 Z_6 Z_7 VDD VSNEM VSS
    Xpex I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 S0 S1 Z_0 Z_1 Z_2 Z_3 Z_4 Z_5 Z_6 Z_7 nem_ohmux_invd1_2i_8b_pex
    Xnem0 I0_0 Z_0 I0_1 Z_1 I0_2 Z_2 I0_3 Z_3 I0_4 Z_4 I0_5 Z_5 I0_6 Z_6 I0_7 Z_7 S0 VSNEM z0 nem_relay_8b
    Xnem1 I1_0 Z_0 I1_1 Z_1 I1_2 Z_2 I1_3 Z_3 I1_4 Z_4 I1_5 Z_5 I1_6 Z_6 I1_7 Z_7 S1 VSNEM z1 nem_relay_8b
    *.ic V(z0)=0
    *.ic V(z1)=0
    *.nodeset V(Z_0)=0
    *.nodeset V(Z_1)=0
    *.nodeset V(Z_2)=0
    *.nodeset V(Z_3)=0
    *.nodeset V(Z_4)=0
    *.nodeset V(Z_5)=0
    *.nodeset V(Z_6)=0
    *.nodeset V(Z_7)=0
.ends
