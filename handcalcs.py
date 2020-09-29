# Imports
import json, numpy as np, pandas as pd

# Parameters
params = json.load(open("params.json"))
propdf = pd.read_csv("output/mechprops.csv", header=None)
k_tot = propdf[1][0]
m = propdf[2][0]
L_plate = params["L_plate"]
t_cont = params["t_cont"]
t_gap = params["t_gap"] + params["t_sp"] / params["K_sp"]
F_A = 0

# Constants
eps_0 = 8.85418782E-12 # m^-3 kg^-1 s^4 A^2
E_poly = 145E9 # Pa
rho_poly = 4126 # kg/m^3
rho_W = 55e-9 # Ohm m (W)
H_W = 1.1e9 # Pa
lambda_W = 33e-9 # m
k = 4.7 # dielectric constant of Castor oil
xi_W = 0.1

# Calculations
V_pi = ((8 * k_tot * t_gap**3)/(27 * k * eps_0 * L_plate**2))**0.5
V_po = ((2 * (k_tot * (t_gap - t_cont) - F_A) * t_cont**2)/(k * eps_0 * L_plate**2))**0.5

# Results
print("Pull-in voltage: %s V" % V_pi)
print("Pull-out voltage: %s V" % V_po)

for i, F_cont in enumerate(open("output/fcont.csv").read().split(",")):
    try:
        A_r = float(F_cont) / (xi_W * H_W)
        R_cont = 4 * rho_W * lambda_W / (3 * A_r)
        print("Contact resistance %s: %s Ohm" % (i, R_cont))
    except:
        pass
