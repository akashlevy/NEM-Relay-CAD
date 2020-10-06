.title <test_relay.sp>
.hdl nem_relay.va

** Create relay and start at z=0 **
Xnem gnd Vg Vsrc gnd z nem_relay
.ic V(z) 0

** Test fast transitions **
Vsrc Vsrc gnd 1V

** Sweep voltage (bipolar mode) **
Vg Vg gnd 0V PWL(0s 0V 1us 0V 2us 5V 3us 0V 5us 5V 7us 0V 11us 5V 15us 0V)

** Generate I-V plot **
.tran 0.001us 14us

.probe V(Vg) V(Vsrc) PAR('abs(I(Vsrc))') z
.option post=2
.option runlvl=5 accurate

.end
