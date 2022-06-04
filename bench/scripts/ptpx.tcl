# Setup technology libs
suppress_message [list AUTOREAD-107 ELAB-311 MWLIBP-311 TFCHK-012 TFCHK-049 TFCHK-050 TFCHK-084 TFCHK-092 TIM-052 TIM-128 UISN-40 UITE-121 VO-4]

# Set design name and output load from environment
set design_name $::env(DESIGN)
set input_driver $::env(DRIVER)
set output_load $::env(LOAD)
set alias ${design_name}_${input_driver}_${output_load}

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

# TODO: UPDATE PARASITICS FOR NEMS CASE

# Update/check/report timing
update_timing -full
check_timing -verbose > reports/$alias.checktiming.rpt
report_timing -nosplit -transition_time -input -to Z[0] -net -capacitance -nworst 100 -slack_lesser_than 5 > reports/$alias.timing.rpt

# Get pins
set I_pins [get_pins I*]
set S_pins [get_pins S*]

# Update/check/report power for select toggling mode (S pins toggling)
set_switching_activity -toggle_rate 0.0 -static_probability 0.5 -base_clock clk $I_pins
set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock clk $S_pins
update_power
check_power -verbose > reports/$alias.sel.checkpower.rpt
report_switching_activity > reports/$alias.sel.activity.post.rpt
report_power -nosplit -hierarchy -leaf > reports/$alias.sel.power.hier.rpt

# Update/check/report power for input toggling mode (S pins toggling)
set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock clk $I_pins
set_switching_activity -toggle_rate 0.0 -static_probability 0.5 -base_clock clk $S_pins
update_power
check_power -verbose > reports/$alias.inp.checkpower.rpt
report_switching_activity > reports/$alias.inp.activity.post.rpt
report_power -nosplit -hierarchy -leaf > reports/$alias.inp.power.hier.rpt

# Update/check/report power for dual toggling mode (I and S pins toggling)
set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock clk $I_pins
set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock clk $S_pins
update_power
check_power -verbose > reports/$alias.dual.checkpower.rpt
report_switching_activity > reports/$alias.dual.activity.post.rpt
report_power -nosplit -hierarchy -leaf > reports/$alias.dual.power.hier.rpt

exit



# set net_0_7_name [get_attribute [get_nets -of_objects [get_pins sb_wide/sb_unq1_mux_gate_0_0_0_7/I0_0]] full_name]
# set_resistance -max $new_res_val $sb_unq1_mux_gate_0_1_0_7_I1_0_net
# set_load -max [expr $I1_4_max_wire_cap_sb_unq1_mux_gate_0_0_0_7 + $Z_4_max_wire_cap_sb_unq1_mux_gate_0_0_0_7] [get_nets -of_objects [get_pins sb_wide/sb_unq1_mux_gate_0_0_0_7/I1_4]]

