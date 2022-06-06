# Setup technology libs
suppress_message [list AUTOREAD-107 ELAB-311 MWLIBP-311 NED-057 TFCHK-012 TFCHK-049 TFCHK-050 TFCHK-084 TFCHK-092 TIM-052 TIM-128 UISN-40 UITE-121 VO-4]

# Set design name and output load from environment
set design_name $::env(DESIGN)
set input_driver $::env(DRIVER)
set output_load $::env(LOAD)
set N $::env(N)
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

# Insert buffer on all inputs
insert_buffer [all_inputs] $input_driver

# Constraints
read_sdc ../scripts/constraints.sdc

# Update parasitics for NEMS case
# if {[string first "feedthru" $design_name] != -1} {
  set_resistance -min 80 [get_nets -of_objects [get_ports Z]]
  set_resistance -max 80 [get_nets -of_objects [get_ports Z]]
  set_load [expr $output_load + 0.00015 + 0.0000173 + ($N+1) * 0.0007 + 0.003] [all_outputs]
# }

# Update/check/report timing
update_timing -full
check_timing -verbose > reports/$alias.checktiming.rpt
report_timing -nosplit -transition_time -input -to Z[0] -net -capacitance -nworst 100 -slack_lesser_than 5 > reports/$alias.timing.rpt

# Get pins
if {[string first "mux" $design_name] != -1} { set I_ports [get_ports I*] }
set S_ports [get_ports S*]

# Update/check/report power for select toggling mode (S pins toggling)
if {[string first "mux" $design_name] != -1} { set_switching_activity -toggle_rate 0.0 -static_probability 0.5 -base_clock clk $I_ports }
set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock clk $S_ports
update_power
check_power -verbose > reports/$alias.sel.checkpower.rpt
report_switching_activity > reports/$alias.sel.activity.post.rpt
report_power -nosplit -hierarchy -leaf > reports/$alias.sel.power.hier.rpt

# Check if mux
if {[string first "mux" $design_name] != -1} {
  # Update/check/report power for input toggling mode (I pins toggling)
  set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock clk $I_ports
  set_switching_activity -toggle_rate 0.0 -static_probability 0.5 -base_clock clk $S_ports
  update_power
  check_power -verbose > reports/$alias.inp.checkpower.rpt
  report_switching_activity > reports/$alias.inp.activity.post.rpt
  report_power -nosplit -hierarchy -leaf > reports/$alias.inp.power.hier.rpt

  # Update/check/report power for dual toggling mode (I and S pins toggling)
  set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock clk $I_ports
  set_switching_activity -toggle_rate 0.5 -static_probability 0.5 -base_clock clk $S_ports
  update_power
  check_power -verbose > reports/$alias.dual.checkpower.rpt
  report_switching_activity > reports/$alias.dual.activity.post.rpt
  report_power -nosplit -hierarchy -leaf > reports/$alias.dual.power.hier.rpt
}

# extract_model -library_cell -output ${alias} -format {lib}
# write_interface_timing reports/${alias}_interface_timing.report

exit



# set net_0_7_name [get_attribute [get_nets -of_objects [get_ports sb_wide/sb_unq1_mux_gate_0_0_0_7/I0_0]] full_name]
# set_resistance -max $new_res_val $sb_unq1_mux_gate_0_1_0_7_I1_0_net
# set_load -max [expr $I1_4_max_wire_cap_sb_unq1_mux_gate_0_0_0_7 + $Z_4_max_wire_cap_sb_unq1_mux_gate_0_0_0_7] [get_nets -of_objects [get_ports sb_wide/sb_unq1_mux_gate_0_0_0_7/I1_4]]

