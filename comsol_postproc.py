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
props = {'k': propdf[1][0], 'meff': propdf[2][0], 'w0': propdf[3][0]}
props['meff'] = props['k']/props['w0']**2 

# Get params and descriptions
params = json.load(open("params.json"), object_pairs_hook=OrderedDict)
desc = json.load(open("helper/params_desc.json"), object_pairs_hook=OrderedDict)
print(desc)

# Generate tech_params.va
with open('spice/tech_params.va', 'w') as f:
    for param, val in params.items() + caps.items() + props.items():
        if type(val) in [int, float, np.float64] and param in desc:
            f.write("parameter real %s = %s; // %s\n" % (param, val, desc[param]))
