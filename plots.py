# Import libraries
import json, matplotlib as mpl, matplotlib.pyplot as plt, pandas as pd, numpy as np

# Set font size
plt.rcParams.update({'font.size': 14})

# Parameters
params = json.load(open("params.json"))
propdf = pd.read_csv("output/mechprops.csv", header=None)
k_tot = propdf[1][0]
m = propdf[2][0]
Vop = params["Vop"]
VSNEM = params["VSNEM"]
L_plate = params["L_plate"]
n_cont = params["n_cont"]
L_cont = params["L_cont"]
A_gate = L_plate**2 - n_cont * L_cont**2 * 2.5 # Approximate area of contact+channels as 2.5x contact area
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
k = 1 # dielectric constant of air
xi_W = 0.25 # elastic contact constant

# Calculations
V_pi = ((8 * k_tot * t_gap**3)/(27 * k * eps_0 * A_gate))**0.5
V_po = ((2 * (k_tot * (t_gap - t_cont) - F_A) * t_cont**2)/(k * eps_0 * A_gate))**0.5

# Plot quasi-static curves
qs_comsol = pd.read_csv("output/quasistatic.csv", header=None, names=["Vg", "z"])
qs_spice = pd.read_csv("output/quasistatic_sp.txt", delimiter='\t', header=0, names=["Vg", "z"])
plt.figure(figsize=(5, 3))
plt.xlabel("Gate-to-Body Voltage $V_{GB}$ (V)")
plt.ylabel("Relay $z$-Disp. (nm)")
plt.plot(qs_comsol["Vg"], qs_comsol["z"]*1e3, label="FEM")
#plt.plot(qs_spice["Vg"], qs_spice["z"]*1e9, label="SPICE")
plt.plot([V_pi, V_pi], [0, 40], '--', label="$V_{pi}$ analytical")
plt.plot([V_po, V_po], [0, 40], '--', label="$V_{po}$ analytical")
#plt.plot([Vop, Vop], [0, 40], '.--', label="ON state bias")
#plt.plot([-VSNEM, -VSNEM], [0, 40], '.--', label="OFF state bias")
plt.xlim(0, 5)
plt.ylim(0, 40)
plt.legend()
plt.tight_layout()
plt.savefig("figures/quasistatic-curve.pdf")
plt.show()

# Plot transient curve rising
tran_spice = pd.read_csv("output/transient_sp.txt", delim_whitespace=True, header=0, names=["t", "z"])
tran_spice_rise = tran_spice[tran_spice["t"] >= 10000*1e-9]
tran_spice_rise = tran_spice_rise[tran_spice_rise["t"] <= 20000*1e-9]
tran_spice_rise["t"] = tran_spice_rise["t"] - 10000*1e-9
print(tran_spice.head())
tran_label = "SPICE sim\n$V_{GB}$ = %.1fV\nQ=0.5" % params["Vop"]
plt.figure(figsize=(5, 3))
plt.xlabel("Time ($\mu$s)")
plt.ylabel("Relay $z$-Disp. (nm)")
plt.plot(tran_spice_rise["t"]*1e6, tran_spice_rise["z"]*1e9, label=tran_label)
plt.xlim(0, 3)
plt.ylim(0, 40)
plt.legend()
plt.tight_layout()
plt.savefig("figures/transient-curve-rise.pdf")
plt.show()

# Plot transient curve falling
tran_spice_fall = tran_spice[tran_spice["t"] >= 20000*1e-9]
tran_spice_fall = tran_spice_fall[tran_spice_fall["t"] <= 21200*1e-9]
tran_spice_fall["t"] = tran_spice_fall["t"] - 20000*1e-9
plt.figure(figsize=(5, 3))
plt.xlabel("Time ($\mu$s)")
plt.ylabel("$z$ Displacement (nm)")
plt.plot(tran_spice_fall["t"]*1e9, tran_spice_fall["z"]*1e9, label=tran_label)
plt.xlim(0, 1000)
plt.ylim(0, 40)
plt.legend()
plt.tight_layout()
plt.savefig("figures/transient-curve-fall.pdf")
plt.show()

# Body biasing plots
cpump = pd.read_csv("output/cccp.csv", header=0, names=["t", "V(clkb)", "t2", "V(out)", "t3", "V(clk)", "t4", "vs1", "t5", "V(clk,raw)"])
for i in range(2, 6):
  del cpump[f"t{i}"]
print(cpump.head())
plt.figure(figsize=(6, 3.2))
plt.xlabel("Time ($\mu$s)")
plt.ylabel("Voltage (V)")
plt.plot(cpump["t"]*1e6, cpump["V(clk)"], label="V(in): buffered 2.5V clock", linewidth=0.8)
plt.plot(cpump["t"]*1e6, cpump["V(out)"], label="V(out): NEM relay body bias")
plt.plot([1e-4, 1e3], [0.95*-3.9, 0.95*-3.9], 'r--', label="95% of V(out) steady state")
plt.xscale("log")
plt.xlim(1e-4, 15)
plt.legend(loc="lower left", bbox_to_anchor=(0, 0.06))
plt.tight_layout()
plt.savefig("figures/cpump-tran.pdf")
plt.show()
