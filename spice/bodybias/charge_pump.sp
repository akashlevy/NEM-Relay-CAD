.title <charge_pump.sp>

** Include the libraries **
.lib /tsmc40r/pdk/2019.10.15_TSMC/TN40CLSP058_1_5_2/T-N40-CL-SP-058_v1d5_2/models/cln40ulp_2d5_lk_v1d5_2_shrink0d9_embedded_usage.l TT_RES_BIP_DIO_DISRES
.lib /tsmc40r/pdk/2019.10.15_TSMC/TN40CLSP058_1_5_2/T-N40-CL-SP-058_v1d5_2/models/res_metal.l TT_res_metal

** Define the charge pump **
.subckt charge_pump CLK B2 VSS
    CT1 CLK T1 10n
    CT2 T1 T2 10n
    * CT3 T2 T3 10n
    CB1 VSS B1 10n
    CB2 B1 B2 10n
    * CB3 B2 OUT 10n

    D1 T1 VSS ndio area=1n pj=10u
    D2 B1 T1 ndio area=1n pj=10u
    D3 T2 B1 ndio area=1n pj=10u
    D4 B2 T2 ndio area=1n pj=10u
    * D5 T3 B2 ndio area=1n pj=10u
    * D6 OUT T3 ndio area=1n pj=10u
.ends
