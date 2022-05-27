.title <charge_pump_tran_sim.sp>

** Include the model **
.include charge_pump.sp

** Create the charge pump **
Xpump CLK OUT VSS charge_pump
Crelay OUT VSS 10n

** Supply voltages **
VSS VSS 0 0V

** Clock pulse **
VCLK CLK 0 PULSE(0V 2.5V 0 100ps 100ps 2.5ns 5ns)

** Options **
.tran 1ns 100us
.option post=2
.option runlvl=1 method=gear