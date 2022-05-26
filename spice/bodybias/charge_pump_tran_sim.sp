.title <charge_pump_tran_sim.sp>

** Include the libraries **
.lib /tsmc40r/pdk/2019.10.15_TSMC/TN40CLSP058_1_5_2/T-N40-CL-SP-058_v1d5_2/models/cln40ulp_2d5_lk_v1d5_2_shrink0d9_embedded_usage.l TTMacro_MOS_MOSCAP
.lib /tsmc40r/pdk/2019.10.15_TSMC/TN40CLSP058_1_5_2/T-N40-CL-SP-058_v1d5_2/models/res_metal.l TT_res_metal
.include charge_pump.sp

** Create the charge pump **
Xpump IN OUT VDD VDDIO VSS

** Supply voltages **
VDD VDD 0 1.1V
VDDIO VDDIO 0 2.5V
VSS VSS 0 0V

** Clock pulse **
VIN IN 0 PULSE(0V 2.5V 0 10ps 10ps 5ns 10ns)


** Options **
.tran 0.0001us 10000ns
.option post=2
.option runlvl=5 accurate method=gear 