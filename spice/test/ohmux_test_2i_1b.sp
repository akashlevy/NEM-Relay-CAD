.title <ohmux_test_2i_1b.sp>
.include ../models/nem_ohmux_2i_1b.sp

** Tests one-hot multiplexer using analog inputs **

** Create relay and start at z=0 **
Xmux I0_0 I1_0 S0 S1 Z_0 nem_ohmux_2i_1b

** Source voltage **
VI0_0 I0_0 gnd 0.5V
VI1_0 I1_0 gnd 1.0V
VS0 S0 gnd 0V PWL(0s 0V 1ns 5V 1000ns 5V 1001ns 0V 2000ns 0V)
VS1 S1 gnd 0V PWL(0s 0V 1ns 0V 1000ns 0V 1001ns 5V 2000ns 5V)
RZ_0 Z_0 gnd 1G

** Options **
.tran 0.0001us 2000ns
.option post=2
.option runlvl=5 accurate

.end
