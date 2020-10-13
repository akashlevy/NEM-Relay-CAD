# Set cell lists for import
set cells {{nem_ohmux_2i_1b}}

# Set and create characterization point
set charpoint nems40tt
create $charpoint 
set_log_file $charpoint/sis.log
set_location $charpoint

# Configure and characterize
configure -fast -timing -power -ccs $cells
characterize $cells

# Output models
model -verilog -output verilog $cells
model -timing -power -output nldm $cells
model -timing -power -ccs -output ccs $cells

log_info "IAMDONE"