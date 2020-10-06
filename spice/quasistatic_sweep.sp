.title <test_relay.sp>
.hdl nem_relay.va

** Create relay and start at z=0 **
Xnem gnd Vg Vsrc gnd z nem_relay
.ic V(z)=0

** Test fast transitions **
Vsrc Vsrc gnd 1V

** Sweep voltage (unipolar) **
Vg Vg gnd 0V PWL(0s 0V 100us 0V 200us 5V 300us 0V)

** Generate I-V plot **
.tran 0.0001us 300us

.probe V(Vg) V(Vsrc) PAR('abs(I(Vsrc))') z
.option post=2
.option runlvl=5 accurate

.end
