# Import libraries
import argparse, json
from itertools import combinations
from string import Template

# Parse arguments
parser = argparse.ArgumentParser(description="Generate N-bit-wide M-option one-hot multiplexer SPICE model")
parser.add_argument('N', help="Bit width i.e. number of bits to route with one relay", type=int)
parser.add_argument('M', help="Number of inputs to multiplex", type=int)
parser.add_argument('-D', help="Drive strength of output inverter", type=int, default=0)
args = parser.parse_args()

# Get inverter cell data (output loads and area per cell)
invcelldata = json.load(open("templates/invcelldata.json"))

# Initialize substitution dictionary from params
subs = json.load(open("../params.json"))
N, M, D, subs['area'] = args.N, args.M, args.D, invcelldata[str(args.D)]['area'] * args.N

# Copy from params to subs
subs['N'] = N
subs['M'] = M
subs['D'] = D

# Mux pins
subs['inpins'] = ' '.join(['I{i}_{b}'.format(i=i, b=b) for i in range(M) for b in range(N)]) + ' '
subs['inpins'] += ' '.join(['S{i}'.format(i=i) for i in range(M)]) + ' '
subs['outpins'] = ' '.join(['Z_{b}'.format(b=b) for b in range(N)])
subs['pins'] = subs['inpins'] + subs['outpins']
subs['invoutpins'] = subs['outpins'].replace('Z', 'ZN')
subs['invpins'] = subs['pins'].replace('Z', 'ZN')
subs['inpins'] = subs['inpins'].strip().replace(' ', ', ')
subs['invoutpins'] = subs['invoutpins'].strip().replace(' ', ', ')

# Mux relay instantiation
subs['relays'] = ''
for i in range(M):
    subs['relays'] += '    Xnem{i} '.format(i=i)
    for b in range(N):
        subs['relays'] += 'I{i}_{b} Z_{b} '.format(i=i, b=b)
    subs['relays'] += 'S{i} VSNEM z{i} nem_relay_{N}b\n'.format(i=i, N=N)
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
    subs['invs'] += '    Xinv{i} Z_{i} ZN_{i} VDD VSS INVD{D}BWP40\n'.format(D=D, i=i)
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

# Output load explicit points
subs['loadpts'] = invcelldata[str(args.D)]['loadpts']

# Assigns for Verilog model
subs['assigns'] = ''
for i in range(N):
    conds = ["S{j}&I{j}_{i}".format(i=i, j=j) for j in range(M)]
    subs['assigns'] += "    assign ZN_%s = !( %s );\n" % (i, " | ".join(conds))
subs['assigns'] = subs['assigns'].strip()

# Specifies for Verilog model
subs['specifies'] = ''
for i in range(N):
    subs['specifies'] += "".join(["        // comb arc I{j}_{i} --> ZN_{i}\n        (I{j}_{i} => ZN_{i}) = (0.0,0.0);\n\n".format(i=i, j=j) for j in range(M)])
for i in range(N):
    for d in ['negedge', 'posedge']:
        subs['specifies'] += "".join(["        ifnone\n        // comb arc {d} S{j} --> (ZN_{i}:S{j})\n        ({d} S{j} => (ZN_{i}:S{j})) = (0.0,0.0);\n\n".format(d=d, i=i, j=j) for j in range(M)])
subs['specifies'] = subs['specifies'].strip()

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

# Template substitution for Verilog instance
template = Template(open("../spice/templates/nem_ohmux.v.tmpl").read())
output = template.substitute(subs)
outfname = "models/nem_ohmux_invd{D}_{M}i_{N}b.v".format(D=D, M=M, N=N)
open(outfname, "w").write(output)
