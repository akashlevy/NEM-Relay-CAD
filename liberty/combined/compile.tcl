#####################
# Compile CCS model #
#####################
suppress_message { LBDB-29 LBDB-366 LBDB-75 LIBG-242 UIL-2 }
read_lib ./ccs_nems40tt.lib
write_lib nems40tt -f db -o ./ccs_nems40tt.db

######################
# Compile NLDM model #
######################
read_lib ./nldm_nems40tt.lib
write_lib nems40tt -f db -o ./nldm_nems40tt.db

#########################
# Compile Verilog model #
#########################
suppress_message { LBDB-29 LBDB-366 LBDB-75 LIBG-242 UIL-2 LBDB-607 }
read_lib ./verilog_nems40tt.lib
write_lib nems40tt -f db -o ./verilog_nems40tt.db

#############
# Complete! #
#############
quit