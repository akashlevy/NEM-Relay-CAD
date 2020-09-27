# Imports
import numpy as np, matplotlib as mpl, matplotlib.pyplot as plt


# TODO: work on this some more


# Overdrive voltage
OV = 1.2

# Constants
eps_0 = 8.85418782E-12 # m^-3 kg^-1 s^4 A^2
E_poly = 145E9 # Pa
rho_poly = 4126 # kg/m^3
F_A_mult = 22500 # N/m^2
rho_W = 55e-9 # Ohm m
H_W = 1.1e9 # Pa
lambda_W = 33e-09 # m
k = 4.7 # dielectric constant of Castor oil
xi_W = 0.3

# Calculations
L_cant = L_plate + 2*W_cant
g_cant = W_cant

A_plate = L_plate**2
A_cont = L_cont**2
A_act = A_plate + 4*L_cant*W_cant - N_cont * A_cont

F_E = lambda V_gb, x: (k * eps_0 * A_act * V_gb**2) / (2 * (g_act - x)**2)

L_c1 = L_cant/2

k_tot = 25 # 3 * E_poly * W_cant * t_poly**3 / L_c1**3 # pg. 22 of Hei Kam's book

M = rho_poly * A_plate * t_poly

V_pi = ((8 * k_tot * g_act**3)/(27 * k * eps_0 * A_act))**0.5

F_A = F_A_mult * N_cont * A_cont

V_po = ((2 * (k_tot * (g_act - t_cont) - F_A) * t_cont**2)/(k * eps_0 * A_act))**0.5

F_net = lambda V_gb, x: F_E(V_gb, x) - k_tot * x

A_r = F_net(V_pi * OV, t_cont) / (xi_W * H_W * N_cont)

R_cont = 4 * rho_W * lambda_W / (3 * A_r)

# Results
print("Proof mass: %s kg" % M)
print("Spring constant: %s N/m" % k_tot)
print("Pull-in voltage: %s V" % V_pi)
print("Pull-out voltage: %s V" % V_po)
print("Contact resistance: %s Ohm" % R_cont)
