.title <ohmux_test_14i_1b.sp>
.include ../models/nem_ohmux_14i_1b.sp

** Tests one-hot multiplexer using analog inputs **

** Create relay and start at z=0 **
Xmux I0_0 I1_0 I2_0 I3_0 I4_0 I5_0 I6_0 I7_0 I8_0 I9_0 I10_0 I11_0 I12_0 I13_0 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 S12 S13 Z_0 VDD VSNEM VSS nem_ohmux_14i_1b

** Source voltage **
VI0_0 I0_0 gnd 0.0714285714286V
VI1_0 I1_0 gnd 0.142857142857V
VI2_0 I2_0 gnd 0.214285714286V
VI3_0 I3_0 gnd 0.285714285714V
VI4_0 I4_0 gnd 0.357142857143V
VI5_0 I5_0 gnd 0.428571428571V
VI6_0 I6_0 gnd 0.5V
VI7_0 I7_0 gnd 0.571428571429V
VI8_0 I8_0 gnd 0.642857142857V
VI9_0 I9_0 gnd 0.714285714286V
VI10_0 I10_0 gnd 0.785714285714V
VI11_0 I11_0 gnd 0.857142857143V
VI12_0 I12_0 gnd 0.928571428571V
VI13_0 I13_0 gnd 1.0V
VS0 S0 gnd 0V PWL(0s 0V 1ns 1.1V 5000ns 1.1V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS1 S1 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 1.1V 10000ns 1.1V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS2 S2 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 1.1V 15000ns 1.1V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS3 S3 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 1.1V 20000ns 1.1V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS4 S4 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 1.1V 25000ns 1.1V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS5 S5 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 1.1V 30000ns 1.1V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS6 S6 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 1.1V 35000ns 1.1V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS7 S7 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 1.1V 40000ns 1.1V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS8 S8 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 1.1V 45000ns 1.1V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS9 S9 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 1.1V 50000ns 1.1V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS10 S10 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 1.1V 55000ns 1.1V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS11 S11 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 1.1V 60000ns 1.1V 60001ns 0V 65000ns 0V 65001ns 0V 70000ns 0V)
VS12 S12 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 1.1V 65000ns 1.1V 65001ns 0V 70000ns 0V)
VS13 S13 gnd 0V PWL(0s 0V 1ns 0V 5000ns 0V 5001ns 0V 10000ns 0V 10001ns 0V 15000ns 0V 15001ns 0V 20000ns 0V 20001ns 0V 25000ns 0V 25001ns 0V 30000ns 0V 30001ns 0V 35000ns 0V 35001ns 0V 40000ns 0V 40001ns 0V 45000ns 0V 45001ns 0V 50000ns 0V 50001ns 0V 55000ns 0V 55001ns 0V 60000ns 0V 60001ns 0V 65000ns 0V 65001ns 1.1V 70000ns 1.1V)
RZ_0 Z_0 gnd 1G
VDD VDD gnd 1.1V
VSNEM VSNEM gnd -2.6V
VSS VS gnd 0V

** Options **
.tran 0.0001us 70000ns
.option post=2
.option runlvl=5 accurate method=gear vntol=1f

.end
