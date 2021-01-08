.title <quasistatic_sweep_1b.sp>
.hdl ../models/nem_relay_1b.va

** Create relay and start at z=0 **
Xnem gnd Vsrc Vg gnd z nem_relay_1b
.ic V(z)=0

** Source voltage **
Vsrc Vsrc gnd 0.1V

** Sweep gate voltage **
Vg Vg gnd 0V

** Options **
.dc Vg START=0V STOP=5V STEP=0.01V
.probe V(Vg) V(Vsrc) PAR('abs(I(Vsrc))') z
.option post=2
.option runlvl=5 accurate

.end
