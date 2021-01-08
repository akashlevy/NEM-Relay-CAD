.title <ohmux_test_4i_1b.sp>
.include ../models/nem_ohmux_4i_1b.sp

** Tests one-hot multiplexer using analog inputs **

** Create relay and start at z=0 **
Xmux I0_0 I1_0 I2_0 I3_0 S0 S1 S2 S3 Z_0 VDD VSNEM VSS nem_ohmux_4i_1b

** Source voltage **
VI0_0 I0_0 gnd 0.25V
VI1_0 I1_0 gnd 0.5V
VI2_0 I2_0 gnd 0.75V
VI3_0 I3_0 gnd 1.0V
VS0 S0 gnd 0V PWL(0s 0V 1ns 1.1V 5000ns 1.1V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V)
VS1 S1 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 1.1V 10000ns 1.1V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V)
VS2 S2 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 1.1V 15000ns 1.1V 15001ns 0V 20000ns 0V)
VS3 S3 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 1.1V 20000ns 1.1V)
RZ_0 Z_0 gnd 1G
VDD VDD gnd 1.1V
VSNEM VSNEM gnd -3.4V
VSS VS gnd 0V

** Options **
.tran 0.0001us 20000ns
.option post=2
.option runlvl=5 accurate method=gear vntol=1f

.end
