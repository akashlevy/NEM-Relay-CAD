.title <ohmux_test_invd0_2i_8b.sp>
.include ../models/nem_ohmux_invd0_2i_8b.sp

** Tests one-hot multiplexer with inverter using analog inputs **

** Create relay and start at z=0 **
Xmux I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 S0 S1 ZN_0 ZN_1 ZN_2 ZN_3 ZN_4 ZN_5 ZN_6 ZN_7 VDD VB VSS nem_ohmux_invd0_2i_8b

** Source voltage **
VI0_0 I0_0 gnd 0.0625V
VI0_1 I0_1 gnd 0.125V
VI0_2 I0_2 gnd 0.1875V
VI0_3 I0_3 gnd 0.25V
VI0_4 I0_4 gnd 0.3125V
VI0_5 I0_5 gnd 0.375V
VI0_6 I0_6 gnd 0.4375V
VI0_7 I0_7 gnd 0.5V
VI1_0 I1_0 gnd 0.5625V
VI1_1 I1_1 gnd 0.625V
VI1_2 I1_2 gnd 0.6875V
VI1_3 I1_3 gnd 0.75V
VI1_4 I1_4 gnd 0.8125V
VI1_5 I1_5 gnd 0.875V
VI1_6 I1_6 gnd 0.9375V
VI1_7 I1_7 gnd 1.0V
VS0 S0 gnd 0V PWL(0s 0V 1ns 1.1V 5000ns 1.1V 5001ns 0V 10000ns 0V)
VS1 S1 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 1.1V 10000ns 1.1V)
RZN_0 ZN_0 gnd 1G
RZN_1 ZN_1 gnd 1G
RZN_2 ZN_2 gnd 1G
RZN_3 ZN_3 gnd 1G
RZN_4 ZN_4 gnd 1G
RZN_5 ZN_5 gnd 1G
RZN_6 ZN_6 gnd 1G
RZN_7 ZN_7 gnd 1G
VDD VDD gnd 1.1V
VB VB gnd -2.6V
VSS VS gnd 0V

** Options **
.tran 0.0001us 10000ns
.option post=2
.option runlvl=5 accurate method=gear vntol=1f

.end
