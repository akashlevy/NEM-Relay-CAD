if { [catch {
set_location /home/akashl/NEM-Relay-CAD/liberty/nems40tt
set jobName [lindex $argv 0]

# Parameter block and pintype definitions.  The following definitions
# preserve any (pintype) parameters set outside of the configure.tcl file.
define_parameters default {
    set PLACEHOLDER X
}

define_parameters liberty_model {
    set default_cell_leakage_power 0.0
    set default_fanout_load 1.0
    set default_inout_pin_cap 0.0006825
    set default_input_pin_cap 0.0006825
    set default_leakage_power_density 0.0
    set default_output_pin_cap 0.0
    set delay_model table_lookup
    set in_place_swap_mode match_footprint
}

pintype default {
    set PLACEHOLDER X
}

# Liberty attributes set by user
set_liberty_attribute -cell nem_ohmux_invd0_2i_1b area 0
# Liberty groups added by the user
# Liberty attributes cleared by user

#Operating conditions

create_operating_condition nems40tt
add_opc_supplies nems40tt VB -2.6 VDD 1.1
add_opc_grounds nems40tt VSS 0.0

## 
## User-specified characterization and modeling configuration options.
## 

create_parameter is_char_mode
set_config_opt -- is_char_mode 1

create_parameter simulator_version_info
set_config_opt -- simulator_version_info M-2017.03-SP2

} err ] } {

# Connect back to the server to send err message.
startCdplWorker $err
exit 0
} else {
}
