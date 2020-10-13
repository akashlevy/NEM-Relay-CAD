.title <ohmux_test_2i_1b_ref.sp>
.include ../models/nem_ohmux_2i_1b_ref.sp

** Create relay and start at z=0 **
Xmux I0 I1 S0 S1 Z nem_ohmux_2i_1b

** Source voltage **
VI0 I0 gnd 1V
VI1 I1 gnd 0.5V
VS0 S0 gnd 0V PWL(0s 0V 1ns 5V 1000ns 5V 1001ns 0V 2000ns 0V)
VS1 S1 gnd 0V PWL(0s 0V 1ns 0V 1000ns 0V 1001ns 5V 2000ns 5V)
Rout Z gnd 1G

** Options **
.tran 0.0001us 3000ns
.probe PAR('abs(I(I0))') PAR('abs(I(I1))')
.option post=2
.option runlvl=5 accurate

.end
