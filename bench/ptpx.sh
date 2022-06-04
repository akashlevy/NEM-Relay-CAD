#! /bin/tcsh
# Takes in top level design name as argument and
# runs basic PTPX script
setenv DESIGN $1
setenv DRIVER $2
setenv LOAD $3
rm -f scripts/constraints.sdc
echo set_input_transition 0 \[all_inputs\] > scripts/constraints.sdc
echo set_driving_cell -lib_cell $2 \[all_inputs\] >> scripts/constraints.sdc
echo set_load $3 \[all_outputs\] >> scripts/constraints.sdc
echo create_clock -name clk -period 5 >> scripts/constraints.sdc
echo set_max_delay -from \[all_inputs\] -to \[all_outputs\] 5 >> scripts/constraints.sdc
mkdir -p ptpx/logs
mkdir -p ptpx/reports
cd ptpx
pt_shell -o "logs/$1_ptpx.log" -f ../scripts/ptpx.tcl
cd ..
