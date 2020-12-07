#####################
# Compile CCS model #
#####################
read_lib ./feedthru.lib
write_lib feedthru -f db -o ./ccs_feedthru.db

######################
# Compile NLDM model #
######################
write_lib feedthru -f db -o ./nldm_feedthru.db

#########################
# Compile Verilog model #
#########################
write_lib feedthru -f db -o ./verilog_feedthru.db

#############
# Complete! #
#############
quit