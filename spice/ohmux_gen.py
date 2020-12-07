# Import libraries
import argparse, json
from itertools import combinations
from string import Template

# Parse arguments
parser = argparse.ArgumentParser(description="Generate N-bit-wide M-option one-hot multiplexer SPICE model")
parser.add_argument('N', help="Bit width i.e. number of bits to route with one relay", type=int)
parser.add_argument('M', help="Number of inputs to multiplexer", type=int)
parser.add_argument('-D', help="Drive strength of output inverter", type=int, default=0)
parser.add_argument('-A', '--area', help="Area of each inverter (um^2) to determine lib area", type=float, default=0)
args = parser.parse_args()

# Initialize substitution dictionary from params
subs = json.load(open("../params.json"))
N, M, D, subs['area'] = args.N, args.M, args.D, args.area * args.N

# Copy from params to subs
subs['N'] = N
subs['M'] = M
subs['D'] = D

# Mux pins
subs['pins'] = ' '.join(['I{i}_{b}'.format(i=i, b=b) for i in range(M) for b in range(N)]) + ' '
subs['pins'] += ' '.join(['S{i}'.format(i=i) for i in range(M)]) + ' '
subs['pins'] += ' '.join(['Z_{b}'.format(b=b) for b in range(N)])
subs['invpins'] = subs['pins'].replace('Z', 'ZN')

# Mux relay instantiation
subs['relays'] = ''
for i in range(M):
    subs['relays'] += '    Xnem{i} '.format(i=i)
    for b in range(N):
        subs['relays'] += 'I{i}_{b} Z_{b} '.format(i=i, b=b)
    subs['relays'] += 'S{i} VB z{i} nem_relay_{N}b\n'.format(i=i, N=N)
subs['relays'] = subs['relays'][4:-1]

# Mux initial conditions
subs['ics'] = '\n'.join(['    *.ic V(z{i})=0'.format(i=i) for i in range(M)] + ['    *.nodeset V(Z_{b})=0'.format(b=b) for b in range(N)])[4:]

# Input voltages
subs['VI'] = '\n'.join(['VI{i}_{b} I{i}_{b} gnd {V}V'.format(i=i, b=b, V=(i*N+b+1.)/(N*M)) for i in range(M) for b in range(N)])

# Select voltages
subs['VS'] = ''
for i in range(M):
    subs['VS'] += 'VS{i} S{i} gnd 0V PWL(0s 0V'.format(i=i)
    for j in range(M):
        V = subs['VDD'] if i==j else 0
        subs['VS'] += ' {t0}ns {V}V {tf}ns {V}V'.format(t0=j*5000+1, tf=(j+1)*5000, V=V)
    subs['VS'] += ')\n'
subs['VS'] = subs['VS'][:-1]

# Output resistance
subs['RZ'] = '\n'.join(['RZ_{b} Z_{b} gnd 1G'.format(b=b) for b in range(N)])
subs['RZN'] = '\n'.join(['RZN_{b} ZN_{b} gnd 1G'.format(b=b) for b in range(N)])

# Time window
subs['tmax'] = 5000*M

# Inverters for ohmux inv
subs['invs'] = ''
for i in range(N):
    subs['invs'] += '    Xinv{i} Z_{i} ZN_{i} VDD VSS INVD{D}BWP\n'.format(D=D, i=i)
subs['invs'] = subs['invs'][4:-1]

# Pin definitions
if N == 1:
    subs['pindefs'] = ["add_pin I{i}_0 default -input".format(i=i) for i in range(M)]
    subs['pindefs'] += ["add_pin S{i} default -input".format(i=i) for i in range(M)]
    subs['pindefs'] += ["add_pin ZN_0 default -output"]
else:
    subs['pindefs'] = ["add_pin I{i} default -input".format(i=i) for i in range(M)]
    subs['pindefs'] += ["add_pin S{i} default -input".format(i=i) for i in range(M)]
    subs['pindefs'] += ["add_pin ZN default -output"]
subs['pindefs'] = "\n".join(subs['pindefs'])

# Function definition
subs['fndefs'] = []
selcombos = list(combinations(["S{i}".format(i=i) for i in range(M)], 2))
spins = " ".join(["S{i}".format(i=i) for i in range(M)])
illegals = ["&".join(["!S{i}".format(i=i) for i in range(M)])] + ["&".join(c) for c in selcombos]
illegals = " | ".join(illegals)
if N == 1:
    ipins = " ".join(["I{i}_0".format(i=i) for i in range(M)])
    #subs['fndefs'].append("add_one_hot ZN_0 { %s } { %s }" % (spins, ipins))
    conds = ["S{i}&I{i}_0".format(i=i) for i in range(M)]
    subs['fndefs'].append("add_function ZN_0 {!( %s )} -illegal { %s }" % (" | ".join(conds), illegals))
else:
    ipins = " ".join(["I{i}".format(i=i) for i in range(M)])
    #subs['fndefs'].append("add_one_hot ZN { %s } { %s }" % (spins, ipins))
    conds = ["S{i}&I{i}".format(i=i) for i in range(M)]
    subs['fndefs'].append("add_function ZN {!( %s )} -illegal { %s }" % (" | ".join(conds), illegals))
subs['fndefs'].append("add_forbidden_state { %s }" % illegals)
for selcombo in selcombos:
    subs['fndefs'].append("add_switch_tuple { %s }" % " ".join(selcombo))
subs['fndefs'] = '\n'.join(subs['fndefs'])
subs['contention_condition'] = illegals

# Bundle defintion
subs['bundles'] = []
subs['bundles'] += ["set_config_opt -pin %s members { %s } " % (ipin, " ".join(["I{i}_{b}".format(i=i,b=b) for b in range(N)]) ) for i,ipin in enumerate(ipins.split())]
subs['bundles'] += ["set_config_opt -pin ZN members { %s } " % " ".join(["ZN_{b}".format(b=b) for b in range(N)])]
subs['bundles'] = '\n'.join(subs['bundles']) if N != 1 else ''

# State partitions
subs['spart'] = "one"

# Template substitution for SPICE model
template = Template(open('templates/nem_ohmux.sp.tmpl').read())
output = template.substitute(subs)
open("models/nem_ohmux_{M}i_{N}b.sp".format(M=M, N=N), 'w').write(output)

# Template substitution for SPICE model with inverter
template = Template(open('templates/nem_ohmux_inv.sp.tmpl').read())
output = template.substitute(subs)
open("models/nem_ohmux_invd{D}_{M}i_{N}b.sp".format(D=D, M=M, N=N), 'w').write(output)

# Template substitution for SPICE test
template = Template(open('templates/ohmux_test.sp.tmpl').read())
output = template.substitute(subs)
open("test/ohmux_test_{M}i_{N}b.sp".format(M=M, N=N), 'w').write(output)

# Template substitution for SPICE test with inverter
template = Template(open('templates/ohmux_test_inv.sp.tmpl').read())
output = template.substitute(subs)
open("test/ohmux_test_invd{D}_{M}i_{N}b.sp".format(D=D, M=M, N=N), 'w').write(output)

# Template substitution for SiliconSmart instance
template = Template(open("../liberty/templates/nem_ohmux.inst.tmpl").read())
output = template.substitute(subs)
outfname = "../liberty/control/nem_ohmux_invd{D}_{M}i_{N}b.inst".format(D=D, M=M, N=N)
open(outfname, "w").write(output)
