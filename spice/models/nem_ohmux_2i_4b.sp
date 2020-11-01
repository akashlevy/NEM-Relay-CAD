.title <nem_ohmux_2i_4b.sp>
.hdl nem_relay_4b.va
.global VDD VB VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_2i_4b I0_0 I0_1 I0_2 I0_3 I1_0 I1_1 I1_2 I1_3 S0 S1 Z_0 Z_1 Z_2 Z_3 VDD VB VSS
    Xnem0 I0_0 Z_0 I0_1 Z_1 I0_2 Z_2 I0_3 Z_3 S0 VB z0 nem_relay_4b
    Xnem1 I1_0 Z_0 I1_1 Z_1 I1_2 Z_2 I1_3 Z_3 S1 VB z1 nem_relay_4b
    *.ic V(z0)=0
    *.ic V(z1)=0
    *.nodeset V(Z_0)=0
    *.nodeset V(Z_1)=0
    *.nodeset V(Z_2)=0
    *.nodeset V(Z_3)=0
.ends
