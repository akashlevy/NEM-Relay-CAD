.title <quasistatic_sweep_4b.sp>
.hdl ../models/nem_relay_4b.va

** Create relay and start at z=0 **
Xnem gnd Vsrc gnd Vsrc gnd Vsrc gnd Vsrc Vg gnd z nem_relay_4b
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
