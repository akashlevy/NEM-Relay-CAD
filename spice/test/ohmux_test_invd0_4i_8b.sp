.title <ohmux_test_invd0_4i_8b.sp>
.include ../models/nem_ohmux_invd0_4i_8b.sp

** Tests one-hot multiplexer with inverter using analog inputs **

** Create relay and start at z=0 **
Xmux I0_0 I0_1 I0_2 I0_3 I0_4 I0_5 I0_6 I0_7 I1_0 I1_1 I1_2 I1_3 I1_4 I1_5 I1_6 I1_7 I2_0 I2_1 I2_2 I2_3 I2_4 I2_5 I2_6 I2_7 I3_0 I3_1 I3_2 I3_3 I3_4 I3_5 I3_6 I3_7 S0 S1 S2 S3 ZN_0 ZN_1 ZN_2 ZN_3 ZN_4 ZN_5 ZN_6 ZN_7 VDD VSNEM VSS nem_ohmux_invd0_4i_8b

** Source voltage **
VI0_0 I0_0 gnd 0.03125V
VI0_1 I0_1 gnd 0.0625V
VI0_2 I0_2 gnd 0.09375V
VI0_3 I0_3 gnd 0.125V
VI0_4 I0_4 gnd 0.15625V
VI0_5 I0_5 gnd 0.1875V
VI0_6 I0_6 gnd 0.21875V
VI0_7 I0_7 gnd 0.25V
VI1_0 I1_0 gnd 0.28125V
VI1_1 I1_1 gnd 0.3125V
VI1_2 I1_2 gnd 0.34375V
VI1_3 I1_3 gnd 0.375V
VI1_4 I1_4 gnd 0.40625V
VI1_5 I1_5 gnd 0.4375V
VI1_6 I1_6 gnd 0.46875V
VI1_7 I1_7 gnd 0.5V
VI2_0 I2_0 gnd 0.53125V
VI2_1 I2_1 gnd 0.5625V
VI2_2 I2_2 gnd 0.59375V
VI2_3 I2_3 gnd 0.625V
VI2_4 I2_4 gnd 0.65625V
VI2_5 I2_5 gnd 0.6875V
VI2_6 I2_6 gnd 0.71875V
VI2_7 I2_7 gnd 0.75V
VI3_0 I3_0 gnd 0.78125V
VI3_1 I3_1 gnd 0.8125V
VI3_2 I3_2 gnd 0.84375V
VI3_3 I3_3 gnd 0.875V
VI3_4 I3_4 gnd 0.90625V
VI3_5 I3_5 gnd 0.9375V
VI3_6 I3_6 gnd 0.96875V
VI3_7 I3_7 gnd 1.0V
VS0 S0 gnd 0V PWL(0s 0V 1ns 1.1V 5000ns 1.1V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V)
VS1 S1 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 1.1V 10000ns 1.1V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V)
VS2 S2 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 1.1V 15000ns 1.1V 15001ns 0V 20000ns 0V)
VS3 S3 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 1.1V 20000ns 1.1V)
RZN_0 ZN_0 gnd 1G
RZN_1 ZN_1 gnd 1G
RZN_2 ZN_2 gnd 1G
RZN_3 ZN_3 gnd 1G
RZN_4 ZN_4 gnd 1G
RZN_5 ZN_5 gnd 1G
RZN_6 ZN_6 gnd 1G
RZN_7 ZN_7 gnd 1G
VDD VDD gnd 1.1V
VSNEM VSNEM gnd -2.6V
VSS VS gnd 0V

** Options **
.tran 0.0001us 20000ns
.option post=2
.option runlvl=5 accurate method=gear vntol=1f

.end
