# Set and create characterization point
set charpoint nems40tt
# exec rm -r $charpoint
create $charpoint

# Copy and symlink as necessary
exec rm -rf $charpoint/config/configure.tcl
exec ln -s ../../configure.tcl $charpoint/config/configure.tcl
exec rm -rf $charpoint/netlists
exec ln -s ../../spice/models $charpoint/netlists
exec rm -rf $charpoint/control
exec ln -s ../control $charpoint/control

# Setup log and location
set_log_file $charpoint/sis.log
set_location $charpoint

# Set cell lists for import from control directory .inst files
set cells [lmap f [glob -directory control -tails *.inst] {file rootname $f}]

# Configure and characterize
configure -fast -timing -power -ccs $cells
characterize $cells

# Output models
model -verilog -output verilog $cells
model -timing -power -output nldm $cells
model -timing -power -ccs -output ccs $cells

# Qualify models
qualify_library $charpoint/models/liberty/nldm_nems40tt.lib
qualify_library $charpoint/models/liberty/ccs_nems40tt.lib

# Generate datasheets
generate_datasheet $cells

# Compile models
exec lc_shell -f compile.tcl

log_info "IAMDONE"
