.title <nem_ohmux_10i_8b.sp>
.hdl nem_relay_8b.va

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_10i_8b I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 I2_0 I2_1 I2_2 I2_3 I2_4 I2_5 I2_6 I2_7 I3_0 I3_1 I3_2 I3_3 I3_4 I3_5 I3_6 I3_7 I4_0 I4_1 I4_2 I4_3 I4_4 I4_5 I4_6 I4_7 I5_0 I5_1 I5_2 I5_3 I5_4 I5_5 I5_6 I5_7 I6_0 I6_1 I6_2 I6_3 I6_4 I6_5 I6_6 I6_7 I7_0 I7_1 I7_2 I7_3 I7_4 I7_5 I7_6 I7_7 I8_0 I8_1 I8_2 I8_3 I8_4 I8_5 I8_6 I8_7 I9_0 I9_1 I9_2 I9_3 I9_4 I9_5 I9_6 I9_7 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 Z_0 Z_1 Z_2 Z_3 Z_4 Z_5 Z_6 Z_7
    Vbody Vbody gnd 0V
    Xnem0 I0_0 Z_0 I0_1 Z_1 I0_2 Z_2 I0_3 Z_3 I0_4 Z_4 I0_5 Z_5 I0_6 Z_6 I0_7 Z_7 S0 Vbody z0 nem_relay_8b
    Xnem1 I1_0 Z_0 I1_1 Z_1 I1_2 Z_2 I1_3 Z_3 I1_4 Z_4 I1_5 Z_5 I1_6 Z_6 I1_7 Z_7 S1 Vbody z1 nem_relay_8b
    Xnem2 I2_0 Z_0 I2_1 Z_1 I2_2 Z_2 I2_3 Z_3 I2_4 Z_4 I2_5 Z_5 I2_6 Z_6 I2_7 Z_7 S2 Vbody z2 nem_relay_8b
    Xnem3 I3_0 Z_0 I3_1 Z_1 I3_2 Z_2 I3_3 Z_3 I3_4 Z_4 I3_5 Z_5 I3_6 Z_6 I3_7 Z_7 S3 Vbody z3 nem_relay_8b
    Xnem4 I4_0 Z_0 I4_1 Z_1 I4_2 Z_2 I4_3 Z_3 I4_4 Z_4 I4_5 Z_5 I4_6 Z_6 I4_7 Z_7 S4 Vbody z4 nem_relay_8b
    Xnem5 I5_0 Z_0 I5_1 Z_1 I5_2 Z_2 I5_3 Z_3 I5_4 Z_4 I5_5 Z_5 I5_6 Z_6 I5_7 Z_7 S5 Vbody z5 nem_relay_8b
    Xnem6 I6_0 Z_0 I6_1 Z_1 I6_2 Z_2 I6_3 Z_3 I6_4 Z_4 I6_5 Z_5 I6_6 Z_6 I6_7 Z_7 S6 Vbody z6 nem_relay_8b
    Xnem7 I7_0 Z_0 I7_1 Z_1 I7_2 Z_2 I7_3 Z_3 I7_4 Z_4 I7_5 Z_5 I7_6 Z_6 I7_7 Z_7 S7 Vbody z7 nem_relay_8b
    Xnem8 I8_0 Z_0 I8_1 Z_1 I8_2 Z_2 I8_3 Z_3 I8_4 Z_4 I8_5 Z_5 I8_6 Z_6 I8_7 Z_7 S8 Vbody z8 nem_relay_8b
    Xnem9 I9_0 Z_0 I9_1 Z_1 I9_2 Z_2 I9_3 Z_3 I9_4 Z_4 I9_5 Z_5 I9_6 Z_6 I9_7 Z_7 S9 Vbody z9 nem_relay_8b
    .ic V(z0)=0
    .ic V(z1)=0
    .ic V(z2)=0
    .ic V(z3)=0
    .ic V(z4)=0
    .ic V(z5)=0
    .ic V(z6)=0
    .ic V(z7)=0
    .ic V(z8)=0
    .ic V(z9)=0
.ends
