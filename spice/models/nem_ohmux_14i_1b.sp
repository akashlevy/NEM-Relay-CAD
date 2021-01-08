.title <nem_ohmux_14i_1b.sp>
.hdl nem_relay_1b.va
.global VDD VSNEM VSS

** Create relay and start at z=0 **
** Format is I{i}_{b} where {i} is input number, {b} is bit index **
.subckt nem_ohmux_14i_1b I0_0 I1_0 I2_0 I3_0 I4_0 I5_0 I6_0 I7_0 I8_0 I9_0 I10_0 I11_0 I12_0 I13_0 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 S12 S13 Z_0 VDD VSNEM VSS
    Xnem0 I0_0 Z_0 S0 VSNEM z0 nem_relay_1b
    Xnem1 I1_0 Z_0 S1 VSNEM z1 nem_relay_1b
    Xnem2 I2_0 Z_0 S2 VSNEM z2 nem_relay_1b
    Xnem3 I3_0 Z_0 S3 VSNEM z3 nem_relay_1b
    Xnem4 I4_0 Z_0 S4 VSNEM z4 nem_relay_1b
    Xnem5 I5_0 Z_0 S5 VSNEM z5 nem_relay_1b
    Xnem6 I6_0 Z_0 S6 VSNEM z6 nem_relay_1b
    Xnem7 I7_0 Z_0 S7 VSNEM z7 nem_relay_1b
    Xnem8 I8_0 Z_0 S8 VSNEM z8 nem_relay_1b
    Xnem9 I9_0 Z_0 S9 VSNEM z9 nem_relay_1b
    Xnem10 I10_0 Z_0 S10 VSNEM z10 nem_relay_1b
    Xnem11 I11_0 Z_0 S11 VSNEM z11 nem_relay_1b
    Xnem12 I12_0 Z_0 S12 VSNEM z12 nem_relay_1b
    Xnem13 I13_0 Z_0 S13 VSNEM z13 nem_relay_1b
    *.ic V(z0)=0
    *.ic V(z1)=0
    *.ic V(z2)=0
    *.ic V(z3)=0
    *.ic V(z4)=0
    *.ic V(z5)=0
    *.ic V(z6)=0
    *.ic V(z7)=0
    *.ic V(z8)=0
    *.ic V(z9)=0
    *.ic V(z10)=0
    *.ic V(z11)=0
    *.ic V(z12)=0
    *.ic V(z13)=0
    *.nodeset V(Z_0)=0
.ends
