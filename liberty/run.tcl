# Set and create characterization point
set charpoint nems40tt
# exec rm -rf $charpoint
create $charpoint 
set_log_file $charpoint/sis.log
set_location $charpoint

# Copy and symlink as necessary
exec rm -rf $charpoint/config/configure.tcl
exec ln -s ../../configure.tcl $charpoint/config/configure.tcl
exec rm -rf $charpoint/netlists
exec ln -s ../../spice/models $charpoint/netlists
exec rm -rf $charpoint/control
exec ln -s ../control $charpoint/control

# Set cell lists for import
set cells [lmap f [glob -directory control -tails *.inst] {file rootname $f}]

# Configure and characterize
configure -fast -timing -power -ccs $cells
characterize $cells

# Output models
model -verilog -output verilog $cells
model -timing -power -output nldm $cells
model -timing -power -ccs -output ccs $cells

# Compile models
exec lc_shell -f compile.tcl

log_info "IAMDONE"
