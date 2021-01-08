.title <nem_ohmux_2i_1b.sp>
.hdl nem_relay_1b.va
.global VDD VSNEM VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_2i_1b I0_0 I1_0 S0 S1 Z_0 VDD VSNEM VSS
    Xnem0 I0_0 Z_0 S0 VSNEM z0 nem_relay_1b
    Xnem1 I1_0 Z_0 S1 VSNEM z1 nem_relay_1b
    *.ic V(z0)=0
    *.ic V(z1)=0
    *.nodeset V(Z_0)=0
.ends
