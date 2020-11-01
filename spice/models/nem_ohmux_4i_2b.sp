.title <nem_ohmux_4i_2b.sp>
.hdl nem_relay_2b.va
.global VDD VB VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_4i_2b I0_0 I0_1 I1_0 I1_1 I2_0 I2_1 I3_0 I3_1 S0 S1 S2 S3 Z_0 Z_1 VDD VB VSS
    Xnem0 I0_0 Z_0 I0_1 Z_1 S0 VB z0 nem_relay_2b
    Xnem1 I1_0 Z_0 I1_1 Z_1 S1 VB z1 nem_relay_2b
    Xnem2 I2_0 Z_0 I2_1 Z_1 S2 VB z2 nem_relay_2b
    Xnem3 I3_0 Z_0 I3_1 Z_1 S3 VB z3 nem_relay_2b
    *.ic V(z0)=0
    *.ic V(z1)=0
    *.ic V(z2)=0
    *.ic V(z3)=0
    *.nodeset V(Z_0)=0
    *.nodeset V(Z_1)=0
.ends
