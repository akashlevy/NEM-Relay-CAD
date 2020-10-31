#####################
# Compile CCS model #
#####################
suppress_message { LBDB-29 LBDB-366 LBDB-75 LIBG-242 UIL-2 }
read_lib ./nems40tt/models/liberty/ccs_nems40tt.lib
write_lib nems40tt -f db -o ./nems40tt/models/liberty/ccs_nems40tt.db

######################
# Compile NLDM model #
######################
read_lib ./nems40tt/models/liberty/nldm_nems40tt.lib
write_lib nems40tt -f db -o ./nems40tt/models/liberty/nldm_nems40tt.db

#########################
# Compile Verilog model #
#########################
suppress_message { LBDB-29 LBDB-366 LBDB-75 LIBG-242 UIL-2 LBDB-607 }
read_lib ./nems40tt/models/liberty/verilog_nems40tt.lib
write_lib nems40tt -f db -o ./nems40tt/models/liberty/verilog_nems40tt.db

#############
# Complete! #
#############
quit