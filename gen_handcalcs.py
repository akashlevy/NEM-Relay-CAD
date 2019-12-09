# Imports
import numpy as np, matplotlib as mpl, matplotlib.pyplot as plt


# LaTEX quality figures 
mpl.rcParams.update(
    {
    'text.usetex': True,
    'pgf.texsystem': 'lualatex',
    'pgf.rcfonts': True,
    }
)
plt.rc('font', family='serif', serif='Times')


# Default parameters
g_act = 0.08E-6

t_poly = 0.2E-6
L_plate = 5E-6

L_cant = L_plate
W_cant = 0.2E-6
g_cant = W_cant

L_via = 0.5E-6
L_anc = L_via + 0.25E-6

n_cont = N_cont = 4
L_cont = 0.5E-6
r_cont = 1.5E-6
t_cont = 0.04E-6

t_sub = 0.1E-6

t_sp = 0.025E-6

OV = 1.1


# Constants
eps_0 = 8.85418782E-12 # m^-3 kg^-1 s^4 A^2
E_poly = 145E9 # Pa
rho_poly = 4126 # kg/m^3
F_A_mult = 22500 # N/m^2
rho_W = 55e-9 # Ohm m
H_W = 1.1e9 # Pa
lambda_W = 33e-09 # m
xi_W = 0.3


# Calculations
def calcs():
    L_cant = L_plate
    g_cant = W_cant

    A_plate = L_plate**2
    A_cont = L_cont**2
    A_act = A_plate - N_cont * A_cont

    F_E = lambda V_gb, x: (eps_0 * A_act * V_gb**2) / (2 * (g_act - x)**2)

    L_c1 = (L_cant - W_cant / 2) / 2
    L_c2 = 3 * W_cant / 4 

    k_tot = (E_poly * W_cant * t_poly**3) / (2*(L_c1**3 + L_c2**3))

    M = rho_poly * A_plate * t_poly

    V_pi = ((8 * k_tot * g_act**3)/(27 * eps_0 * A_act))**0.5

    F_A = F_A_mult * N_cont * A_cont

    V_po = ((2 * (k_tot * t_cont - F_A) * (g_act - t_cont)**2)/(eps_0 * A_act))**0.5

    F_net = lambda V_gb, x: F_E(V_gb, x) - k_tot * x

    A_r = F_net(V_pi * OV, t_cont) / (xi_W * H_W * N_cont)

    R_cont = 4 * rho_W * lambda_W / (3 * A_r)

    return M, k_tot, V_pi, V_po, R_cont

M, k_tot, V_pi, V_po, R_cont = calcs()


# Results
print("Proof mass: %s kg" % M)
print("Spring constant: %s N/m" % k_tot)
print("Pull-in voltage: %s V" % V_pi)
print("Pull-out voltage: %s V" % V_po)
print("Contact resistance: %s Ohm" % R_cont)


# Generate sweep plots of actuation gap
data = []
g_act_is = np.linspace(0.05e-6, 0.2e-6, 101)
for g_act_i in g_act_is:
    g_act = g_act_i
    data.append(calcs())
M, k_tot, V_pi, V_po, R_cont = zip(*data)

plt.figure(figsize=(4, 3))
plt.title('$k_{tot}$ vs. $g_{act}$')
plt.xlabel('Actuation Gap $g_{act}$ (nm)')
plt.ylabel('Spring Constant $k_{tot}$ (N/m)')
plt.plot(g_act_is * 1E9, k_tot)
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$V_{pi}$, $V_{po}$ vs. $g_{act}$')
plt.xlabel('Actuation Gap $g_{act}$ (nm)')
plt.ylabel('Voltage (V)')
plt.plot(g_act_is * 1E9, V_pi)
plt.plot(g_act_is * 1E9, V_po)
plt.tight_layout()
plt.legend(['$V_{pi}$', '$V_{po}$'])
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$R_{cont}$ vs. $g_{act}$')
plt.xlabel('Actuation Gap $g_{act}$ (nm)')
plt.ylabel('Contact Resistance $R_{cont}$ ($\Omega$)')
plt.plot(g_act_is * 1E9, R_cont)
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

g_act = 0.08e-6


# Generate sweep plots of poly-SiGe thickness
data = []
t_poly_is = np.linspace(0.1e-6, 1e-6, 101)
for t_poly_i in t_poly_is:
    t_poly = t_poly_i
    data.append(calcs())
M, k_tot, V_pi, V_po, R_cont = zip(*data)

plt.figure(figsize=(4, 3))
plt.title('$k_{tot}$ vs. $t_{poly}$')
plt.xlabel('Poly Thickness $t_{poly}$ (nm)')
plt.ylabel('Spring Constant $k_{tot}$ (N/m)')
plt.plot(t_poly_is * 1E9, k_tot, label='Analytical model')
plt.plot(np.linspace(0.1e-6, 1e-6, 10) * 1E9, [1.203369434, 8.547008547, 27.02702703, 60.24096386, 112.3595506, 186.5671642, 282.4858757, 413.2231405, 564.9717514, 763.3587786], label='FEM result')
plt.legend()
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$V_{pi}$, $V_{po}$ vs. $t_{poly}$')
plt.xlabel('Poly Thickness $t_{poly}$ (nm)')
plt.ylabel('Voltage (V)')
plt.plot(t_poly_is * 1E9, V_pi)
plt.plot(t_poly_is * 1E9, V_po)
plt.tight_layout()
plt.legend(['$V_{pi}$', '$V_{po}$'])
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$R_{cont}$ vs. $t_{poly}$')
plt.xlabel('Poly Thickness $t_{poly}$ (nm)')
plt.ylabel('Contact Resistance $R_{cont}$ ($\Omega$)')
plt.plot(t_poly_is * 1E9, R_cont)
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

t_poly = 0.2E-6


# Generate sweep plots of plate length
data = []
L_plate_is = np.linspace(3e-6, 10e-6, 101)
for L_plate_i in L_plate_is:
    L_plate = L_plate_i
    data.append(calcs())
M, k_tot, V_pi, V_po, R_cont = zip(*data)

plt.figure(figsize=(4, 3))
plt.title('$k_{tot}$ vs. $L_{plate}$')
plt.xlabel('Relay Side Length $L_{plate}$ (nm)')
plt.ylabel('Spring Constant $k_{tot}$ (N/m)')
plt.plot(L_plate_is * 1E9, k_tot, label='Analytical model')
plt.plot(np.linspace(3e-6, 10e-6, 8) * 1E9, [50, 17.54385965, 8.547008547, 4.807692308, 2.915451895, 2.040816327, 1.390820584, 1.030927835], label='FEM result')
plt.legend()
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$V_{pi}$, $V_{po}$ vs. $L_{plate}$')
plt.xlabel('Relay Side Length $L_{plate}$ (nm)')
plt.ylabel('Voltage (V)')
plt.plot(L_plate_is * 1E9, V_pi)
plt.plot(L_plate_is * 1E9, V_po)
plt.tight_layout()
plt.legend(['$V_{pi}$', '$V_{po}$'])
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$R_{cont}$ vs. $L_{plate}$')
plt.xlabel('Relay Side Length $L_{plate}$ (nm)')
plt.ylabel('Contact Resistance $R_{cont}$ ($\Omega$)')
plt.plot(L_plate_is * 1E9, R_cont)
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

L_plate = 5e-6


# Generate sweep plots of cantilever width
data = []
W_cant_is = np.linspace(0.1e-6, 1e-6, 101)
for W_cant_i in W_cant_is:
    W_cant = W_cant_i
    data.append(calcs())
M, k_tot, V_pi, V_po, R_cont = zip(*data)

plt.figure(figsize=(4, 3))
plt.title('$k_{tot}$ vs. $W_{cant}$')
plt.xlabel('Cantilever Width $W_{cant}$ (nm)')
plt.ylabel('Spring Constant $k_{tot}$ (N/m)')
plt.plot(W_cant_is * 1E9, k_tot, label='Analytical model')
plt.plot(np.linspace(0.1e-6, 1e-6, 10) * 1E9, [5.154639175, 8.547008547, 15.15151515, 18.97533207, 22.57336343, 26.66666667, 31.15264798, 36.10108303, 42.55319149, 47.61904762], label='FEM result')
plt.legend()
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$V_{pi}$, $V_{po}$ vs. $W_{cant}$')
plt.xlabel('Cantilever Width $W_{cant}$ (nm)')
plt.ylabel('Voltage (V)')
plt.plot(W_cant_is * 1E9, V_pi)
plt.plot(W_cant_is * 1E9, V_po)
plt.tight_layout()
plt.legend(['$V_{pi}$', '$V_{po}$'])
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$R_{cont}$ vs. $W_{cant}$')
plt.xlabel('Cantilever Width $W_{cant}$ (nm)')
plt.ylabel('Contact Resistance $R_{cont}$ ($\Omega$)')
plt.plot(W_cant_is * 1E9, R_cont)
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

W_cant = 0.2E-6


# Generate sweep plots of contact length
data = []
L_cont_is = np.linspace(0.1e-6, 1e-6, 101)
for L_cont_i in L_cont_is:
    L_cont = L_cont_i
    data.append(calcs())
M, k_tot, V_pi, V_po, R_cont = zip(*data)

plt.figure(figsize=(4, 3))
plt.title('$k_{tot}$ vs. $L_{cont}$')
plt.xlabel('Contact Side Length $L_{cont}$ (nm)')
plt.ylabel('Spring Constant $k_{tot}$ (N/m)')
plt.plot(L_cont_is * 1E9, k_tot)
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$V_{pi}$, $V_{po}$ vs. $L_{cont}$')
plt.xlabel('Contact Side Length $L_{cont}$ (nm)')
plt.ylabel('Voltage (V)')
plt.plot(L_cont_is * 1E9, V_pi)
plt.plot(L_cont_is * 1E9, V_po)
plt.tight_layout()
plt.legend(['$V_{pi}$', '$V_{po}$'])
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$R_{cont}$ vs. $L_{cont}$')
plt.xlabel('Contact Side Length $L_{cont}$ (nm)')
plt.ylabel('Contact Resistance $R_{cont}$ ($\Omega$)')
plt.plot(L_cont_is * 1E9, R_cont)
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

L_cont = 0.5e-6


# Generate sweep plots of contact thickness
data = []
t_cont_is = np.linspace(0.01e-6, 0.03e-6, 101)
for t_cont_i in t_cont_is:
    t_cont = t_cont_i
    data.append(calcs())
M, k_tot, V_pi, V_po, R_cont = zip(*data)

plt.figure(figsize=(4, 3))
plt.title('$k_{tot}$ vs. $t_{cont}$')
plt.xlabel('Contact Thickness $t_{cont}$ (nm)')
plt.ylabel('Spring Constant $k_{tot}$ (N/m)')
plt.plot(t_cont_is * 1E9, k_tot)
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$V_{pi}$, $V_{po}$ vs. $t_{cont}$')
plt.xlabel('Contact Thickness $t_{cont}$ (nm)')
plt.ylabel('Voltage (V)')
plt.plot(t_cont_is * 1E9, V_pi)
plt.plot(t_cont_is * 1E9, V_po)
plt.tight_layout()
plt.legend(['$V_{pi}$', '$V_{po}$'])
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

plt.figure(figsize=(4, 3))
plt.title('$R_{cont}$ vs. $t_{cont}$')
plt.xlabel('Contact Thickness $t_{cont}$ (nm)')
plt.ylabel('Contact Resistance $R_{cont}$ ($\Omega$)')
plt.plot(t_cont_is * 1E9, R_cont)
plt.tight_layout()
plt.savefig('plots/' + plt.gca().get_title().replace('$','').replace('{','').replace(',','').replace(' ', '_').replace('}', '').replace('.', '') + '.pdf')
plt.close()

t_cont = 0.04E-6