.title <charge_pump_tran_sim.sp>

** Include the model **
.include charge_pump.sp

** Create the charge pump **
Xpump CLK OUT VSS charge_pump

** Supply voltages **]
VSS VSS 0 0V

** Clock pulse **
VCLK CLK 0 PULSE(0V 2.5V 0 100ps 100ps 5ns 10ns)

** Options **
.tran 1ns 100us
.option post=2
.option runlvl=5 accurate method=gear 