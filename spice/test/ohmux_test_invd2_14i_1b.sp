.title <ohmux_test_invd2_14i_1b.sp>
.include ../models/nem_ohmux_invd2_14i_1b.sp

** Tests one-hot multiplexer with inverter using analog inputs **

** Create relay and start at z=0 **
Xmux I0_0 I1_0 I2_0 I3_0 I4_0 I5_0 I6_0 I7_0 I8_0 I9_0 I10_0 I11_0 I12_0 I13_0 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9 S10 S11 S12 S13 ZN_0 VDD VSNEM VSS nem_ohmux_invd2_14i_1b

** Source voltage **
VI0_0 I0_0 gnd 0.07142857142857142V
VI1_0 I1_0 gnd 0.14285714285714285V
VI2_0 I2_0 gnd 0.21428571428571427V
VI3_0 I3_0 gnd 0.2857142857142857V
VI4_0 I4_0 gnd 0.35714285714285715V
VI5_0 I5_0 gnd 0.42857142857142855V
VI6_0 I6_0 gnd 0.5V
VI7_0 I7_0 gnd 0.5714285714285714V
VI8_0 I8_0 gnd 0.6428571428571429V
VI9_0 I9_0 gnd 0.7142857142857143V
VI10_0 I10_0 gnd 0.7857142857142857V
VI11_0 I11_0 gnd 0.8571428571428571V
VI12_0 I12_0 gnd 0.9285714285714286V
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
RZN_0 ZN_0 gnd 1G
VDD VDD gnd 1.1V
VSNEM VSNEM gnd -3.4V
VSS VS gnd 0V

** Options **
.tran 0.0001us 70000ns
.option post=2
.option runlvl=5 accurate method=gear vntol=1f

.end
