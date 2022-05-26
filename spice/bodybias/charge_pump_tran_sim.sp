.title <charge_pump_tran_sim.sp>

** Include the model **
.include charge_pump.sp

** Create the charge pump **
Xpump IN OUT VDD VDDIO VSS charge_pump

** Supply voltages **
VDD VDD 0 1.1V
VDDIO VDDIO 0 2.5V
VSS VSS 0 0V

** Clock pulse **
VIN IN 0 PULSE(0V 2.5V 0 10ps 10ps 5ns 10ns)


** Options **
.tran 0.01ns 20us
.option post=2
.option runlvl=5 accurate method=gear 