import numpy as np
import os

sweeps = {
    #'g_act' : (0.05e-6, 0.2e-6, 5),
    't_poly' : (0.1e-6, 1e-6, 10),
    'L_plate' : (3e-6, 10e-6, 8),
    'W_cant' : (0.1e-6, 1e-6, 10),
    #'L_cont' : (0.1e-6, 1e-6, 5),
    #'t_cont' : (0.01e-6, 0.03e-6, 5)
}

# Generate STLs for different parameter sweeps
openscad = "/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD"
target = "relay.scad"
for param, sweep in sweeps.items():
    for value in np.linspace(*sweep):
        value = value * 1E6 # unit conversion from meters to microns
        print param, "%.03f" % value
        os.system("%s -o stl/%s_%.03f.stl -D %s=%.03f -D poly_on=1 -D spacer_on=0 -D via_on=0 -D contact_on=0 -D substrate_on=0 -D scale_factor=1e-3 %s" % (openscad, param, value, param, value, target))