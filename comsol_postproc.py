# Import libraries
import json, numpy as np, pandas as pd
from collections import OrderedDict

# Get mutual capacitances
chani = {'g': [0], 'b': [1], 'c': range(2, 10), 'ds': range(10, 26, 2)} # mapping
capmat = pd.read_csv('output/mutualcaps.csv', header=None).as_matrix()
caps = OrderedDict()
for chan1 in chani:
    for chan2 in chani:
        if chan1 == chan2:
            continue
        caps['C' + chan1 + chan2] = np.mean([capmat[i][j] for i in chani[chan1] for j in chani[chan2]])

# Get mechanical properties
propdf = pd.read_csv('output/mechprops.csv', header=None)
props = {'k': propdf[1][0], 'm': propdf[2][0], 'w0': propdf[3][0]}

# Get params
params = OrderedDict(json.load(open("params.json")).items() + props.items() + caps.items())
del params['n_hole'] # bad format for Verilog-A and not needed

# Generate tech_params.va
with open('spice/tech_params.va', 'w') as f:
    for param, val in params.items():
        f.write("real parameter %s = %s;\n" % (param, val))
