#####################
# Compile CCS model #
#####################
read_lib ./nems40tt/models/liberty/ccs_nems40tt.lib
write_lib nems40tt -f db -o ./nems40tt/models/liberty/ccs_nems40tt.db

###################
# Ignore warnings #
###################
# NOTE: Extra timing arc and x_function are needed for ohmux.
# Warning: Line 11, The 'internal_power_calculation' attribute in char_config group is required for NLPM library. 
#         No default can be applied to this attribute. (LBDB-366)
# Warning: Line 324, Cell 'nem_ohmux_invd0_2i_1b', pin 'ZN_0', There is an extra timing arc between 'S0' and 
#         'ZN_0' pins in the 'nem_ohmux_invd0_2i_1b' cell. (LBDB-75)
# Warning: Line 324, Cell 'nem_ohmux_invd0_2i_1b', pin 'ZN_0', There is an extra timing arc between 'S1' and 
#         'ZN_0' pins in the 'nem_ohmux_invd0_2i_1b' cell. (LBDB-75)
# Warning: Line 128, Cell 'nem_ohmux_invd0_2i_1b', The 'nem_ohmux_invd0_2i_1b' cell has signal pins specified with 'x_function' attribute hence
#         it is a black box for optimization tools. (LIBG-242)
# Warning: Overwriting an old technology library '/home/akashl/NEM-Relay-CAD/liberty/nems40tt/models/liberty/nems40tt.db' file with a new one. (UIL-2)
suppress_message { LBDB-366 LBDB-75 LIBG-242 UIL-2 }

#########################
# Compile Verilog model #
#########################
read_lib ./nems40tt/models/liberty/verilog_nems40tt.lib
write_lib nems40tt -f db -o ./nems40tt/models/liberty/verilog_nems40tt.db

######################
# Compile NLDM model #
######################
read_lib ./nems40tt/models/liberty/nldm_nems40tt.lib
write_lib nems40tt -f db -o ./nems40tt/models/liberty/nldm_nems40tt.db

#############
# Complete! #
#############
quit