#! /bin/tcsh
# Takes in top level design name as argument and
# runs converter from 
v2lvs -s tsmc40inc.sp -v $1.v -o $1.sp -lsp /tsmc40r/pdk/2020.01.22_TSMC/tcbn40ulpbwp40_c170815_130d/tcbn40ulpbwp40_c170815_130d/tcbn40ulpbwp40_c170815_130a_lpe/TSMCHOME/digital/Back_End/lpe_spice/tcbn40ulpbwp40_c170815_130a/tcbn40ulpbwp40_c170815_130a_lpe_typical.spi
