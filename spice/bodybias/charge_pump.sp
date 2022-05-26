.title <charge_pump.sp>

** Include the libraries **
.lib /tsmc40r/pdk/2019.10.15_TSMC/TN40CLSP058_1_5_2/T-N40-CL-SP-058_v1d5_2/models/cln40ulp_2d5_lk_v1d5_2_shrink0d9_embedded_usage.l TT_RES_BIP_DIO_DISRES
.lib /tsmc40r/pdk/2019.10.15_TSMC/TN40CLSP058_1_5_2/T-N40-CL-SP-058_v1d5_2/models/res_metal.l TT_res_metal

** Define the charge pump **
.subckt charge_pump IN OUT VDD VDDIO VSS
    C1 IN MID 1n
    D1 MID VSS pdio_25
    D2 OUT MID pdio_25
    C2 OUT VSS 1n
.ends
