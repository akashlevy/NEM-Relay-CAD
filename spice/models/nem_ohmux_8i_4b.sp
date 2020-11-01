.title <nem_ohmux_8i_4b.sp>
.hdl nem_relay_4b.va
.global VDD VB VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_8i_4b I0_0 I0_1 I0_2 I0_3 I1_0 I1_1 I1_2 I1_3 I2_0 I2_1 I2_2 I2_3 I3_0 I3_1 I3_2 I3_3 I4_0 I4_1 I4_2 I4_3 I5_0 I5_1 I5_2 I5_3 I6_0 I6_1 I6_2 I6_3 I7_0 I7_1 I7_2 I7_3 S0 S1 S2 S3 S4 S5 S6 S7 Z_0 Z_1 Z_2 Z_3 VDD VB VSS
    Xnem0 I0_0 Z_0 I0_1 Z_1 I0_2 Z_2 I0_3 Z_3 S0 VB z0 nem_relay_4b
    Xnem1 I1_0 Z_0 I1_1 Z_1 I1_2 Z_2 I1_3 Z_3 S1 VB z1 nem_relay_4b
    Xnem2 I2_0 Z_0 I2_1 Z_1 I2_2 Z_2 I2_3 Z_3 S2 VB z2 nem_relay_4b
    Xnem3 I3_0 Z_0 I3_1 Z_1 I3_2 Z_2 I3_3 Z_3 S3 VB z3 nem_relay_4b
    Xnem4 I4_0 Z_0 I4_1 Z_1 I4_2 Z_2 I4_3 Z_3 S4 VB z4 nem_relay_4b
    Xnem5 I5_0 Z_0 I5_1 Z_1 I5_2 Z_2 I5_3 Z_3 S5 VB z5 nem_relay_4b
    Xnem6 I6_0 Z_0 I6_1 Z_1 I6_2 Z_2 I6_3 Z_3 S6 VB z6 nem_relay_4b
    Xnem7 I7_0 Z_0 I7_1 Z_1 I7_2 Z_2 I7_3 Z_3 S7 VB z7 nem_relay_4b
    *.ic V(z0)=0
    *.ic V(z1)=0
    *.ic V(z2)=0
    *.ic V(z3)=0
    *.ic V(z4)=0
    *.ic V(z5)=0
    *.ic V(z6)=0
    *.ic V(z7)=0
    *.nodeset V(Z_0)=0
    *.nodeset V(Z_1)=0
    *.nodeset V(Z_2)=0
    *.nodeset V(Z_3)=0
.ends
