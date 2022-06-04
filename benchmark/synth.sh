#! /bin/tcsh
# Takes in top level design name as argument and
# runs basic synthesis script
setenv DESIGN $1
if (-d synth/$1) then
  rm -rf synth/$1
endif
mkdir synth
cd synth
dc_shell -o "$1_syn.log" -f scripts/synthesize.tcl
cd ../..