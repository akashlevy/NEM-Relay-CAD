.title <diode_iv.sp>

.lib /tsmc40r/pdk/2019.10.15_TSMC/TN40CLSP058_1_5_2/T-N40-CL-SP-058_v1d5_2/models/cln40ulp_2d5_lk_v1d5_2_shrink0d9_embedded_usage.l TT_RES_BIP_DIO_DISRES

D1 VIN VSS ndio_25od33 area=1n pj=10u

VIN VIN 0 0V
VSS VSS 0 0V

.dc VIN -10 10 0.01
.probe V(VIN) I(VIN)