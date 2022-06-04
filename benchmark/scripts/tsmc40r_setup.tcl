puts "Info: Using TSMC PDK Gate Libraries (40nm, RRAM)"

set TSMC40_EDK_PATH     "/tsmc40r/pdk/2019.05.21_TSMC/tcbn40lpbwp_200a"
set TSMC40_NLDM         "${TSMC40_EDK_PATH}/tcbn40lpbwp_200a_nldm/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn40lpbwp_200a"
set TSMC40_MILKYWAY     "${TSMC40_EDK_PATH}/tcbn40lpbwp_200a_apf/TSMCHOME/digital/Back_End/milkyway/tcbn40lpbwp_200a"
set TSMC40_TLUPLUS      "${TSMC40_MILKYWAY}/techfiles/tluplus/"

#######
# Library search paths and Milkyway reference libraries (Include IC Compiler ILMs here)
#######
set ADDITIONAL_SEARCH_PATH  " \
${TSMC40_NLDM} \
"

set MW_REFERENCE_LIB_DIRS  [list \
/tsmc40r/pdk/digital/5x2z/libraries/tcbn40lpbwp_200a_apt/TSMCHOME/digital/Back_End/milkyway/tcbn40lpbwp_200a/cell_frame_HVH_0d5_0/tcbn40lpbwp]

# Reference Control File to define the MW reference libraries
set MW_REFERENCE_CONTROL_FILE ""

#########
# Target technology logical libraries
#########
set TARGET_LIBRARY_FILES " \
tcbn40lpbwptc.db \
"

########
# Tech files and metal stack extraction models
########
set tluplus_file(fast) "${TSMC40_TLUPLUS}/cln40lp_1p08m+alrdl_5x2z_rcbest.tluplus"
set tluplus_file(slow) "${TSMC40_TLUPLUS}/cln40lp_1p08m+alrdl_5x2z_rcworst.tluplus"
set tluplus_file(typical) "${TSMC40_TLUPLUS}/cln40lp_1p08m+alrdl_5x2z_typical.tluplus"

# Tech files
set TECH_FILE        "${TSMC40_MILKYWAY}/techfiles/HVH_0d5_0/tsmcn40_8lm5X2ZRDL.tf"
set MAP_FILE         "${TSMC40_TLUPLUS}/star.map_8M"
set TLUPLUS_MAX_FILE "$tluplus_file(slow)"
set TLUPLUS_MIN_FILE "$tluplus_file(fast)"

# Name of power/ground ports/nets
set MW_POWER_NET   "VDD"
set MW_POWER_PORT  "VDD"
set MW_GROUND_NET  "VSS"
set MW_GROUND_PORT "VSS"

# Max/Min layers for routing
set MIN_ROUTING_LAYER "M2"
set MAX_ROUTING_LAYER "M8"

###########
# Don't Use File
###########
# Tcl file to prevent Synopsys from considering irrelevent or unneeded library
# components.
# set LIBRARY_DONT_USE_FILE                   "../scripts/common/dont_use.tcl"
set LIBRARY_DONT_USE_PRE_COMPILE_LIST       ""
set LIBRARY_DONT_USE_PRE_INCR_COMPILE_LIST  ""

##########################################################################################
# Multi-Voltage Common Variables
#
# Define the following MV common variables for the RM scripts for multi-voltage flows.
# Use as few or as many of the following definitions as needed by your design.
##########################################################################################

set PD1              ""           ;# Name of power domain/voltage area  1
set PD1_CELLS        ""           ;# Instances to include in power domain/voltage area 1
set VA1_COORDINATES  {}           ;# Coordinates for voltage area 1
set MW_POWER_NET1    "VDD1"       ;# Power net for voltage area 1
set MW_POWER_PORT1   "VDD"        ;# Power port for voltage area 1

set PD2              ""           ;# Name of power domain/voltage area  2
set PD2_CELLS        ""           ;# Instances to include in power domain/voltage area 2
set VA2_COORDINATES  {}           ;# Coordinates for voltage area 2
set MW_POWER_NET2    "VDD2"       ;# Power net for voltage area 2
set MW_POWER_PORT2   "VDD"        ;# Power port for voltage area 2

set PD3              ""           ;# Name of power domain/voltage area  3
set PD3_CELLS        ""           ;# Instances to include in power domain/voltage area 3
set VA3_COORDINATES  {}           ;# Coordinates for voltage area 3
set MW_POWER_NET3    "VDD3"       ;# Power net for voltage area 3
set MW_POWER_PORT3   "VDD"        ;# Power port for voltage area 3

set PD4              ""           ;# Name of power domain/voltage area  4
set PD4_CELLS        ""           ;# Instances to include in power domain/voltage area 4
set VA4_COORDINATES  {}           ;# Coordinates for voltage area 4
set MW_POWER_NET4    "VDD4"       ;# Power net for voltage area 4
set MW_POWER_PORT4   "VDD"        ;# Power port for voltage area 4

set_app_var search_path [list \
$TSMC40_EDK_PATH \
$ADDITIONAL_SEARCH_PATH]

set_app_var target_library ${TARGET_LIBRARY_FILES}
set_app_var link_library "* $target_library"
#set_app_var synthetic_library dw_foundation.sldb
#set_app_var link_library "* $target_library $synthetic_library"
#foreach {max_library min_library} $MIN_LIBRARY_FILES {
#    set_min_library $max_library -min_version $min_library
#}

create_mw_lib mw_lib -technology $TECH_FILE -mw_reference_library $MW_REFERENCE_LIB_DIRS
open_mw_lib mw_lib
set_tlu_plus_files -max_tluplus $TLUPLUS_MAX_FILE -min_tluplus $TLUPLUS_MIN_FILE -tech2itf_map $MAP_FILE