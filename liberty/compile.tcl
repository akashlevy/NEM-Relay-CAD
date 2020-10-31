#####################
# Compile CCS model #
#####################
read_lib ./nems40tt/models/liberty/ccs_nems40tt.lib
write_lib nems40tt -f db -o ./nems40tt/models/liberty/ccs_nems40tt.db

###################
# Ignore warnings #
###################
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