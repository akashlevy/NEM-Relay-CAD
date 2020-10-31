.title <nem_ohmux_2i_2b.sp>
.hdl nem_relay_2b.va
.global VDD VB VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_2i_2b I0_0 I0_1 I1_0 I1_1 S0 S1 Z_0 Z_1 VDD VB VSS
    Xnem0 I0_0 Z_0 I0_1 Z_1 S0 VB z0 nem_relay_2b
    Xnem1 I1_0 Z_0 I1_1 Z_1 S1 VB z1 nem_relay_2b
    *.ic V(z0)=0
    *.ic V(z1)=0
    *.nodeset V(Z_0)=0
    *.nodeset V(Z_1)=0
.ends
