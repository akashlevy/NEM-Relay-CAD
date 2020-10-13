#read_lib ./devicetest/models/liberty/ccs_hybrid40tt.lib
#write_lib hybrid40tt -f db -o ./devicetest/models/liberty/ccs_hybrid40tt.db
#read_lib ./devicetest/models/liberty/verilog_hybrid40tt.lib
#write_lib hybrid40tt -f db -o ./devicetest/models/liberty/verilog_hybrid40tt.db
read_lib ./devicetest/models/liberty/nldm_hybrid40tt.lib
write_lib hybrid40tt -f db -o ./devicetest/models/liberty/nldm_hybrid40tt.db
quit