# Setup technology libs
suppress_message [list AUTOREAD-107 ELAB-311 MWLIBP-311 TFCHK-012 TFCHK-049 TFCHK-050 TFCHK-084 TFCHK-092 TIM-052 TIM-128 UISN-40 VO-4]
source -echo -verbose ../scripts/tsmc40r_setup.tcl

# Set design name from environment
set design_name $::env(DESIGN)

# Report directory
set report_dir ./reports
sh mkdir -p $report_dir

# Define design library
define_design_lib WORK -path ./WORK

# Read in the RTL
read_file -top $design_name -autoread [glob -directory ../rtl -type f *.v *.sv]
current_design $design_name

# Look at link libs to resolve any cell references in the RTL
link

# Minimize area
set_max_area 0

# Check design before
check_design > $report_dir/$design_name.chk1

# Compile
report_compile_options
compile_ultra

# Check design after
check_design > $report_dir/$design_name.chk2

# Write synthesized verilog and reports
write -format verilog -hierarchy -output ./$design_name.v
report_qor > $report_dir/$design_name.qor.rpt
report_power > $report_dir/$design_name.power.top.rpt
report_area -hierarchy > $report_dir/$design_name.area.rpt

# Finish
quit
