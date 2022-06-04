#! /bin/tcsh
# Takes in top level design name as argument and
# runs basic PTPX script
setenv DESIGN $1
rm -f scripts/constraints.sdc
echo set_input_transition 0 \[all_inputs\] > scripts/constraints.sdc
echo set_load $2 \[all_outputs\] >> scripts/constraints.sdc
echo create_clock -name clk -period 5 >> scripts/constraints.sdc
mkdir -p ptpx/logs
mkdir -p ptpx/reports
cd ptpx
pt_shell -o "logs/$1_ptpx.log" -f ../scripts/ptpx.tcl
cd ..
