** Include the library **
.lib /tsmc40r/pdk/ams/5x2z/TN40CMSP015K3_1_3_2A/models/hspice/toplevel.l TOP_TT

** Include logic gates (without LPE) **
*.include /tsmc40r/pdk/2019.05.21_TSMC/tcbn40lpbwp_200a/tcbn40lpbwp_120a_spi/TSMCHOME/digital/Back_End/spice/tcbn40lpbwp_120a/tcbn40lpbwp_120a.spi

** Include logic gates (with LPE) **
.include /tsmc40r/pdk/2019.05.21_TSMC/tcbn40lpbwp_200a/tcbn40lpbwp_120a_lpe/TSMCHOME/digital/Back_End/lpe_spice/tcbn40lpbwp_120a/tcbn40lpbwp_120a_lpe.spi
