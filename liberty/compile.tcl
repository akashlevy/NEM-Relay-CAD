read_lib ./nems40tt/models/liberty/ccs_nems40tt.lib
write_lib nems40tt -f db -o ./nems40tt/models/liberty/ccs_nems40tt.db
read_lib ./nems40tt/models/liberty/verilog_nems40tt.lib
write_lib nems40tt -f db -o ./nems40tt/models/liberty/verilog_nems40tt.db
read_lib ./nems40tt/models/liberty/nldm_nems40tt.lib
write_lib nems40tt -f db -o ./nems40tt/models/liberty/nldm_nems40tt.db
quit