** Include the libraries **
.lib /tsmc40r/pdk/2019.10.15_TSMC/TN40CLSP058_1_5_2/T-N40-CL-SP-058_v1d5_2/models/cln40ulp_2d5_lk_v1d5_2_shrink0d9_embedded_usage.l TTMacro_MOS_MOSCAP
.lib /tsmc40r/pdk/2019.10.15_TSMC/TN40CLSP058_1_5_2/T-N40-CL-SP-058_v1d5_2/models/res_metal.l TT_res_metal

** Include logic gates (without LPE) **
*.include /tsmc40r/pdk/2020.01.22_TSMC/tcbn40ulpbwp40_c170815_130d/tcbn40ulpbwp40_c170815_130d/tcbn40ulpbwp40_c170815_130a_spi/TSMCHOME/digital/Back_End/spice/tcbn40ulpbwp40_c170815_130a/tcbn40ulpbwp40_c170815_130a.spi

** Include ULP logic gates (with LPE, typical) **
.include /tsmc40r/pdk/2020.01.22_TSMC/tcbn40ulpbwp40_c170815_130d/tcbn40ulpbwp40_c170815_130d/tcbn40ulpbwp40_c170815_130a_lpe/TSMCHOME/digital/Back_End/lpe_spice/tcbn40ulpbwp40_c170815_130a/tcbn40ulpbwp40_c170815_130a_lpe_typical.spi
