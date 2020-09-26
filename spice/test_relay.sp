.title <test_relay.sp>
.hdl nem_relay_4T.va

Xnem gnd Vg Vsrc gnd nem_relay

** Test fast transitions **
Vsrc Vsrc gnd 1V
Vg Vg gnd PWL(0us 0V 1us 0.01V 1.0001us 0.5V 2us 0.501V 2.0001us 1V 3us 1.01V 3.0001us 0.5V 4us 0.501V 4.0001us 0V 5us 0.001V)


** Generate I-V plot **
.tran 0.00001us 5us
.probe V(Vg) V(Vsrc) PAR('abs(I(Vsrc))') Xnem:Cgb Xnem:on_flg Xnem:td Xnem:test1 Xnem:test2 Xnem:test3
.option post=2
.option runlvl=5 accurate
* delmax=0.00001us

.end