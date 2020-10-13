.title <nem_ohmux_2i_1b.sp>
.hdl nem_relay_1b.va

** Create relay and start at z=0 **
** Format is Z{I}_{B} where {I} is input number, {B} is bit index
.subckt nem_ohmux_2i_1b I0_0 I1_0 S0_0 S1_0 Z0_0
    Vbody Vbody gnd 0V
    Xnem0 I0_0 Z S0_0 Vbody z0 nem_relay_1b
    Xnem1 I1_0 Z S1_0 Vbody z1 nem_relay_1b
    .ic V(z0)=0
    .ic V(z1)=0
.ends
