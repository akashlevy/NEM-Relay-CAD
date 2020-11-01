.title <ohmux_test_4i_4b.sp>
.include ../models/nem_ohmux_4i_4b.sp

** Tests one-hot multiplexer using analog inputs **

** Create relay and start at z=0 **
Xmux I0_0 I0_1 I0_2 I0_3 I1_0 I1_1 I1_2 I1_3 I2_0 I2_1 I2_2 I2_3 I3_0 I3_1 I3_2 I3_3 S0 S1 S2 S3 Z_0 Z_1 Z_2 Z_3 VDD VB VSS nem_ohmux_4i_4b

** Source voltage **
VI0_0 I0_0 gnd 0.0625V
VI0_1 I0_1 gnd 0.125V
VI0_2 I0_2 gnd 0.1875V
VI0_3 I0_3 gnd 0.25V
VI1_0 I1_0 gnd 0.3125V
VI1_1 I1_1 gnd 0.375V
VI1_2 I1_2 gnd 0.4375V
VI1_3 I1_3 gnd 0.5V
VI2_0 I2_0 gnd 0.5625V
VI2_1 I2_1 gnd 0.625V
VI2_2 I2_2 gnd 0.6875V
VI2_3 I2_3 gnd 0.75V
VI3_0 I3_0 gnd 0.8125V
VI3_1 I3_1 gnd 0.875V
VI3_2 I3_2 gnd 0.9375V
VI3_3 I3_3 gnd 1.0V
VS0 S0 gnd 0V PWL(0s 0V 1ns 1.1V 5000ns 1.1V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V)
VS1 S1 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 1.1V 10000ns 1.1V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V)
VS2 S2 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 1.1V 15000ns 1.1V 15001ns 0V 20000ns 0V)
VS3 S3 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 1.1V 20000ns 1.1V)
RZ_0 Z_0 gnd 1G
RZ_1 Z_1 gnd 1G
RZ_2 Z_2 gnd 1G
RZ_3 Z_3 gnd 1G
VDD VDD gnd 1.1V
VB VB gnd -2.6V
VSS VS gnd 0V

** Options **
.tran 0.0001us 20000ns
.option post=2
.option runlvl=5 accurate method=gear vntol=1f

.end
