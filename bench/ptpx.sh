#! /bin/tcsh
# Takes in top level design name as argument and
# runs basic PTPX script
setenv DESIGN $1
setenv OUTPUT_LOAD $2
mkdir -p ptpx/logs
cd ptpx
pt_shell -o "logs/$1_ptpx.log" -f ../scripts/ptpx.tcl
cd ..
