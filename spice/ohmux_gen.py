# Import libraries
import argparse, json
from string import Template

# Parse arguments
parser = argparse.ArgumentParser(description="Generate N-bit-wide M-signal one-hot multiplexer SPICE model")
parser.add_argument('N', help="Bit width i.e. number of bits to route with one relay", type=int)
parser.add_argument('M', help="Number of inputs to multiplexer", type=int)
args = parser.parse_args()
N, M = args.N, args.M

# Load params
params = json.load(open("../params.json"))

# Initialize substitution dictionary
subs = {}

# Copy from params to subs
subs['N'] = N
subs['M'] = M
subs['Vbody'] = params['Vbody']

subs['pins'] = ' '.join(['I{i}_{b}'.format(i=i, b=b) for i in range(M) for b in range(N)]) + ' '
subs['pins'] += ' '.join(['S{i}'.format(i=i) for i in range(M)]) + ' '
subs['pins'] += ' '.join(['Z_{b}'.format(b=b) for b in range(N)])

subs['relays'] = ''
for i in range(M):
    subs['relays'] += '    Xnem{i} '.format(i=i)
    for b in range(N):
        subs['relays'] += 'I{i}_{b} Z_{b} '.format(i=i, b=b)
    subs['relays'] += 'S{i} Vbody z{i} nem_relay_{N}b\n'.format(i=i, N=N)
subs['relays'] = subs['relays'][4:-1]

subs['ics'] = '\n'.join(['    .ic V(z{i})=0'.format(i=i) for i in range(M)])[4:]

subs['VI'] = '\n'.join(['VI{i}_{b} I{i}_{b} gnd {V}V'.format(i=i, b=b, V=(i*N+b+1.)/(N*M)) for i in range(M) for b in range(N)])

subs['VS'] = ''
for i in range(M):
    subs['VS'] += 'VS{i} S{i} gnd 0V PWL(0s 0V'.format(i=i)
    for j in range(M):
        V = params['Vop'] if i==j else 0
        subs['VS'] += ' {t0}ns {V}V {tf}ns {V}V'.format(t0=j*1000+1, tf=(j+1)*1000, V=V)
    subs['VS'] += ')\n'
subs['VS'] = subs['VS'][:-1]

subs['RZ'] = '\n'.join(['RZ_{b} Z_{b} gnd 1G'.format(b=b) for b in range(N)])

subs['tmax'] = 1000*M

# Template substitution for SPICE model
template = Template(open('templates/nem_ohmux.sp.tmpl').read())
output = template.substitute(subs)
open("models/nem_ohmux_{M}i_{N}b.sp".format(M=M, N=N), 'w').write(output)

# Template substitution for SPICE test
template = Template(open('templates/ohmux_test.sp.tmpl').read())
output = template.substitute(subs)
open("test/ohmux_test_{M}i_{N}b.sp".format(M=M, N=N), 'w').write(output)
