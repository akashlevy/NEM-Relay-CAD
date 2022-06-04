#! /bin/tcsh
# Takes in top level design name as argument and
# runs converter from
mkdir -p spice
v2lvs -a _ -s tsmc40inc.sp -v synth/$1.v -o spice/$1.sp -lsp /tsmc40r/pdk/2020.01.22_TSMC/tcbn40ulpbwp40_c170815_130d/tcbn40ulpbwp40_c170815_130d/tcbn40ulpbwp40_c170815_130a_lpe/TSMCHOME/digital/Back_End/lpe_spice/tcbn40ulpbwp40_c170815_130a/tcbn40ulpbwp40_c170815_130a_lpe_typical.spi
