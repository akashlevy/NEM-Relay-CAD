import json

# INITIALIZE RELAY PARAMETERS (lengths are in units of nm)
try:
    params = json.load(open("../params.json"))
    n_sides = 4; L_plate = params["L_plate"] * 1e9; L_cant = params["L_cant"] * 1e9
    W_cant = params["W_cant"] * 1e9; g_cant = params["g_cant"] * 1e9
    L_via = params["L_via"] * 1e9; L_anc = params["L_anc"] * 1e9
    n_cont = params["n_cont"]; L_cont = params["L_cont"] * 1e9
    r_cont = params["r_cont"] * 1e9; g_land = params["g_land"] * 1e9
    L_hole = params["L_hole"] * 1e9; r_hole_pl = params["r_hole_pl"] * 1e9
    d_hole_pl = params["d_hole_pl"] * 1e9; max_hole = 2
    n_hole = params["n_hole"]; cont_rot_factor = params["cont_rot_factor"]
except IOError, ValueError:
    print("Could not load parameter JSON file, using defaults")
    n_sides = 4                 # number of polygon sides

    L_plate = 3000              # side length of parallel plate

    L_cant = L_plate            # length of cantilever
    W_cant = 200                # width of cantilever
    g_cant = W_cant             # gap between plate and cantilever

    L_via = 400                 # side length of via
    L_anc = L_via + 200         # side length of anchor attachment

    n_cont = 16                 # number of contacts
    L_cont = 150                # side length of contact
    r_cont = 1000               # radius of circle along which to place contacts

    g_land = 50                 # spacing between landing pad

    L_hole = 100                # side length of release hole
    r_hole_pl = 0.78*L_plate/2  # distance from center
    d_hole_pl = 200             # distance apart from release hole
    max_hole = 2                # last hole to have full circle in range
    n_hole = [1, 8, 16, 24]     # number of release holes at each layer

    cont_rot_factor = 0.1       # contact rotation factor
