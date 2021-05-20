# See SiliconSmart User Guide Appendix B for a complete list of parameters and definitions


#################################
# OPERATING CONDITIONS DEFINITION
#################################
create_operating_condition nems40tt
add_opc_supplies nems40tt VDD 1.1
add_opc_grounds nems40tt VSS 0.0 VSNEM -3.4
set_opc_temperature nems40tt 25
set_opc_process nems40tt []


#################################
# GLOBAL CONFIGURATION PARAMETERS
#################################
define_parameters default {

    set nmos_model_names { nch }
    set pmos_model_names { pch }

    set constraint_mode independent
    set smc_constraint_style relative-degradation
    set smc_degrade 0.1
    set path_constraint_mode off

    set bundle_bit_independent_descriptor 1
    set liberty_attributes_at_bundle 1

    set liberty_resistance_unit 1kohm
    set liberty_leakage_power_unit 1nW
    set liberty_max_transition 0
    set calculate_max_transition 0

    set model_significant_digits 8
    set normalized_driver_significant_digits 8

    # List of operating conditions as defined by create_operation_condition
    set active_pvts nems40tt

    # If using IBIS, one operating condition must be specified in ibis_typ_pvt
    # set ibis_typ_pvt op_cond

    # FINESIM
      #set simulator finesim
      #set simulator_cmd {finesim -w <input_deck> -o <listing_file> >&/dev/null}
      #set simulation_tmpdir /tmp

    # FINESIM EMBEDDED
    # set simulator finesim_embedded

    # HSPICE
    set simulator hspice
    set simulator_cmd {hspice <input_deck> -o <listing_file>}
    
    # HSPICE (client/server mode)
    # set simulator hspice_cs
    # set simulator_cmd {hspice -CC <input_deck> -port <port_num> -o <listing_file>}
    
    # SPECTRE
    # set simulator spectre6
    # set simulator_cmd {spectremdl -tab -batch <mdl_file> -design <input_deck> <listing_file> >&/dev/null}
    
    # ELDO
    # set simulator eldo
    # set simulator_cmd {eldo -compat -i <input_deck> > <listing_file> >&/dev/null}

    # MSIM
    # set simulator msim
    # (csh)
    # set simulator_cmd {msim -hsp -i <input_deck> -o <listing_file> >&/dev/null}
    # (sh)
    # set simulator_cmd {msim -hsp -i <input_deck> -o <listing_file> 2>/dev/null}
   

    # Default simulator options for Finesim, Hspice, Spectre, Msim, and Eldo
    set simulator_options {
	"common,finesim_embedded: probe=1 finesim_output=fsdb finesim_mode=spicehd finesim_method=gearv numdgt=7 measdgt=7"
	"common,finesim: probe=1 finesim_output=fsdb finesim_mode=spicehd finesim_method=gearv numdgt=7 measdgt=7"
	"power,finesim_embedded: probe=1 finesim_output=tr0 finesim_mode=spice2  finesim_qlevel=3 finesim_method=gear finesim_leakage_mode=1"
	"common,hspice: probe=0 runlvl=5 numdgt=7 measdgt=7 acct=1 nopage post=2 method=gear vntol=1f accurate=1"
	
	"common,spectre6: compression=yes step=10ps maxstep=1ns relref=allglobal"
	"common,spectre6: method=trap lteratio=4 gmin=1e-18 autostop=0 save=none"

	"common,msim: probe=1 accurate=1"
	
	"common,eldo: gmindc=1n gmin=1p itl1=500 ingold=1 numdgt=4 measout=0 cptime=18000 relvar=0.01"
	"op,eldo: dv=0.5 method=gear"
	"tran,eldo: brief=0 relvar=0.001"
	"optimize,eldo: lvltim=3 relvar=0.001"
	"power,eldo: method=gear"
    }

    # Simulation resolution
    set time_res_high 1e-15
    set time_res_low 100e-15
    #set gate_leakage_time_scaling_factor 100
    
    # Controls which supplies are measured for power consumption
    set power_meas_supplies { VDD }
    
    # list of ground supplies used (required for Functional Recognition)
    set power_meas_grounds { VSS VSNEM }

    # power period
    set power_period 5e-6

    # specifies which multi-rail format to be used in Liberty model; none, v1, or v2.
    set liberty_multi_rail_format v2

    set slew_derate_upper_threshold 0.9
    set slew_derate_lower_threshold 0.1

    set archive_condition_on_success yes
    set archive_condition_on_failure yes

    # LOAD SHARE PARAMETERS
    #  job_scheduler: 'lsf' (Platform), 'grid' (SunGrid), or 'standalone' (local machine)
    set job_scheduler standalone
    set run_list_maxsize 15
    set normal_queue {bnormal -R rusage[mem=4000]}
}


############################
# DEFAULT PINTYPE PARAMETERS
############################
pintype default {
    set logic_high_name VDD
    set logic_low_name VSS
    set logic_high_threshold 0.7
    set logic_low_threshold 0.3
    set prop_delay_inp_level_rise 0.5
    set prop_delay_inp_level_fall 0.5
    set prop_delay_out_level_rise 0.5
    set prop_delay_out_level_fall 0.5

    set explicit_points_slew { 2.05e-12 4.95e-12 1.085e-11 2.265e-11 4.62e-11 9.33e-11 1.8755e-10 }

    set total_slew_multiplier 250
    set initial_delay 1e-6

    set driver_mode active-waveform
    set driver_waveform_points { 0 0.065 0.3 0.40575 0.505974 0.605642 0.7 0.808494 0.920545 0.935027 0.947436 0.961745 0.973027 0.981964 0.988682 0.996391 1 }
    set driver_waveform_min_dt 1e-15
    set driver ndw
    
    #set subtract_leakage 1
}


#####################################
# LIBERTY MODEL GENERATION PARAMETERS
#####################################
define_parameters liberty_model {
    # Add Liberty header attributes here for use with "model -create_new_model"
    set delay_model "table_lookup"
    set default_operating_conditions nems40tt
    set default_fanout_load 1.0
    set default_inout_pin_cap 0.000790888
    set default_input_pin_cap 0.000790888
    set default_output_pin_cap 0.0
    set default_max_transition 0.75
    set default_cell_leakage_power 0.0
    set default_leakage_power_density  0.0
    set in_place_swap_mode match_footprint
}


#######################
# VALIDATION PARAMETERS
#######################
define_parameters validation {
    # Add validation parameters here
    set qualification_lc_suppress { LBDB-366 LBDB-75 LIBG-242 UIL-2 }
}

#
# VALIDATION SUPPRESSED WARNING INFORMATION
#
# NOTE: SiliconSmart produces a define(char_when) statement which is seemingly redundant.
# Warning: Line 39, The 'char_when' attribute is already defined for receiver_capacitance groups.
#         It cannot be redefined. (LBDB-29)
# NOTE: Extra timing arc and x_function are needed for ohmux.
# NOTE: internal_power_calculation is not used in TSMC library either so it can probably be left out
# Warning: Line 11, The 'internal_power_calculation' attribute in char_config group is required for NLPM library. 
#         No default can be applied to this attribute. (LBDB-366)
# Warning: Line 324, Cell 'nem_ohmux_invd0_2i_1b', pin 'ZN_0', There is an extra timing arc between 'S0' and 
#         'ZN_0' pins in the 'nem_ohmux_invd0_2i_1b' cell. (LBDB-75)
# Warning: Line 128, Cell 'nem_ohmux_invd0_2i_1b', The 'nem_ohmux_invd0_2i_1b' cell has signal pins specified with 'x_function' attribute hence
#         it is a black box for optimization tools. (LIBG-242)
# Warning: Overwriting an old technology library '/home/akashl/NEM-Relay-CAD/liberty/nems40tt/models/liberty/nems40tt.db' file with a new one. (UIL-2)
# NOTE: Verilog has timing models only, so power groups will not appear.
# Warning: Line 134, Cell 'nem_ohmux_invd0_2i_1b', pin 'I0_0', The pin 'I0_0' does not have a internal_power group. (LBDB-607)
#
# VALIDATION UNSUPPRESSED WARNING INFORMATION
#
# Warning: Line 296, Cell 'nem_ohmux_invd0_2i_1b', pin 'I0_0', The max value of 1st index of group 'receiver_capacitance1_fall' is 0.372,
#         which is less than max transition of pin 'I0_0', 0.3751. (LBDB-680)
# NOTE: max transition can be slightly extrapolated in this context