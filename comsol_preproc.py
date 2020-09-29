# Import libraries
import json
from collections import OrderedDict

# Get params
params = json.load(open("params.json"), object_pairs_hook=OrderedDict)
params_desc = json.load(open("helper/params_desc.json"), object_pairs_hook=OrderedDict)
params["g_act"] = params["t_gap"]

# Parameter units and multipliers
param_units = {
    "L_plate": ("um", 1e-6),
    "L_cant": ("um", 1e-6),
    "L_cont": ("nm", 1e-9),
    "L_hole": ("nm", 1e-9),
    "L_via": ("nm", 1e-9),
    "L_anc": ("nm", 1e-9),
    "W_cant": ("nm", 1e-9),
    "g_cant": ("nm", 1e-9),
    "g_land": ("nm", 1e-9),

    "r_hole_pl": ("nm", 1e-9),
    "d_hole_pl": ("nm", 1e-9),

    "t_poly": ("nm", 1e-9),
    "t_cont": ("nm", 1e-9),
    "t_sp": ("nm", 1e-9),
    "t_chan": ("nm", 1e-9),
    "t_sub": ("nm", 1e-9),
    "t_gap": ("nm", 1e-9),
    
    "g_act": ("nm", 1e-9),

    "Qf": None,
    "Rcont": ("ohm", 1e-9),
    "Rair": "Air resistance",

    "K_sp": None
}

# Output parameters
with open("comsol/params.txt", "w") as f:
    for key in params:
        if type(params[key]) not in [float, int] or key not in params_text:
            continue
        f.write("%s %s %s")
