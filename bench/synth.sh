#! /bin/tcsh
# Takes in top level design name as argument and
# runs basic synthesis script
setenv DESIGN $1
mkdir -p synth/logs
cd synth
dc_shell -o "logs/$1_syn.log" -f ../scripts/synthesize.tcl
cd ..
