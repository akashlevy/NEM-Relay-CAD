.title <test_relay.sp>
.hdl nem_relay.va

Xnem gnd Vg Vsrc gnd z nem_relay
.ic Xnem:z 0

** Test fast transitions **
Vsrc Vsrc gnd 1V

** Sweep voltage (bipolar mode) **
Vg Vg gnd 0V PWL(0s 0V 1us 10V 2us 0V 4us 1V 6us 0V 10us 1V 14us 0V)

** Generate I-V plot **
.tran 0.001us 14us

.probe V(Vg) V(Vsrc) PAR('abs(I(Vsrc))') Xnem:z
.option post=2
.option runlvl=5 accurate

.end
