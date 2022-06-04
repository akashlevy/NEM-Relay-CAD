# Setup technology libs
suppress_message [list AUTOREAD-107 ELAB-311 MWLIBP-311 TFCHK-012 TFCHK-049 TFCHK-050 TFCHK-084 TFCHK-092 TIM-052 TIM-128 UISN-40 UITE-121 VO-4]

# Set design name and output load from environment
set design_name $::env(DESIGN)
set output_load $::env(OUTPUT_LOAD)

# Set up paths and libraries
set TSMC40_ULP_EDK_PATH      "/tsmc40r/organized_pdk/N40ULP/TSMCHOME/digital"
set_app_var search_path      ". ${TSMC40_ULP_EDK_PATH}/Front_End/timing_power_noise/NLDM/tcbn40ulpbwp40_c170815_130d"
set_app_var target_library   "tcbn40ulpbwp40_c170815tt1p1v25c.db"
set_app_var link_library     [join "
                               *
                               $target_library
                             "]

# Set up power analysis
set_app_var power_enable_analysis true
set_app_var power_analysis_mode   averaged
set_app_var report_default_significant_digits 8

# Read and link the design
read_verilog   [glob -directory ../synth -type f *.v *.sv]
current_design $design_name
link_design

# Constraints
read_sdc ../scripts/constraints.sdc

# TODO: SWITCHING ACTIVITY
# TODO: UPDATE PARASITICS FOR NEMS CASE

# Update timing/power
update_timing -full
update_power

# Check timing/power
check_timing -verbose > reports/$design_name.checktiming.rpt
check_power -verbose > reports/$design_name.checkpower.rpt

# Final reports
report_switching_activity > reports/$design_name.activity.post.rpt
report_power -significant_digits 8 -nosplit -hierarchy -leaf > reports/$design_name.power.hier.rpt
report_timing -from I0[0] -to Z[0] -input -net > reports/$design_name.timing.rpt
report_timing -from S -to Z[0] -input -net > reports/$design_name.timing.rpt

exit



# set net_0_7_name [get_attribute [get_nets -of_objects [get_pins sb_wide/sb_unq1_mux_gate_0_0_0_7/I0_0]] full_name]
# set_resistance -max $new_res_val $sb_unq1_mux_gate_0_1_0_7_I1_0_net
# set_load -max [expr $I1_4_max_wire_cap_sb_unq1_mux_gate_0_0_0_7 + $Z_4_max_wire_cap_sb_unq1_mux_gate_0_0_0_7] [get_nets -of_objects [get_pins sb_wide/sb_unq1_mux_gate_0_0_0_7/I1_4]]

