.title <quasistatic_sweep_1b.sp>
.hdl ../models/nem_relay_1b.va

** Create relay and start at z=0 **
Xnem gnd Vsrc Vg gnd z nem_relay
.ic V(z)=0

** Source voltage **
Vsrc Vsrc gnd 1V

** Sweep gate voltage **
Vg Vg gnd 0V PWL(0s 0V 1000us 0V 2000us 5V 3000us 0V)

** Options **
.tran 0.0001us 3000us
.probe V(Vg) V(Vsrc) PAR('abs(I(Vsrc))') z
.option post=2
.option runlvl=5 accurate

.end
