# Import libraries
import argparse
from string import Template

# Parse arguments
parser = argparse.ArgumentParser(description="Generate N-bit NEM relay Verilog-A model")
parser.add_argument('N', help="Number of bits to route with one relay", type=int)
args = parser.parse_args()

# Initialize substitution dictionary
subs = {}

# Copy from params to subs
subs['N'] = args.N
subs['sdparams'] = ', '.join(["d{i}, s{i}".format(i=i) for i in range(args.N)])
subs['sddefs'] = '\n'.join(["    inout {ds}{i};\n    electrical {ds}{i};".format(ds=ds, i=i) for i in range(args.N) for ds in 'ds'])[4:]
subs['cs'] = ', '.join(["c{i}".format(i=i) for i in range(args.N)])
subs['Qdefs'] = ', '.join(["Qdg{i}, Qsg{i}, Qbd{i}, Qbs{i}".format(i=i) for i in range(args.N)])
subs['dseqns'] = '\n\n'.join(["""// I(b,c{i}) - body to channel cap
Qbc{i} = V(b,c{i})*Cbc;
I(b,c{i})<+ddt(Qbc{i});

// I(g,c{i}) - gate to channel variable cap
Qgc{i} = V(g,c{i})*Cgc*(t_gap - t_chan)/(Pos(mbr,z) - t_chan);
I(g,c{i})<+ddt(Qgc{i});

// I(d{i},g), I(s{i},g) - drain/source to gate cap
Qdg{i} = V(d{i},g)*Cgds;
Qsg{i} = V(s{i},g)*Cgds;
I(d{i},g)<+ddt(Qdg{i});
I(s{i},g)<+ddt(Qsg{i});

// I(b,d{i}), I(b,s{i}) - body to drain/source variable cap
Qbd{i} = V(b,d{i})*Cbds*(t_gap + t_sp/K_sp)/(Pos(mbr,z) + t_sp/K_sp);
Qbs{i} = V(b,s{i})*Cbds*(t_gap + t_sp/K_sp)/(Pos(mbr,z) + t_sp/K_sp);
I(b,d{i})<+ddt(Qbd{i});
I(b,s{i})<+ddt(Qbs{i});

// I(d{i},c{i}), I(s{i},c{i}) - channel to drain/source variable contact resistance
I(d{i},c{i})<+V(d{i},c{i})/
    (Rcont + Rair * smoothstep(Pos(mbr,z) - t_cont, Rturnonsharp));
I(s{i},c{i})<+V(s{i},c{i})/
    (Rcont + Rair * smoothstep(Pos(mbr,z) - t_cont, Rturnonsharp));""".format(i=i) for i in range(args.N)])
subs['dspins'] = ('gnd Vsrc '*args.N)[:-1]

# Template substitution for Verilog-A model
template = Template(open('templates/nem_relay.va.tmpl').read())
output = template.substitute(subs)
open("models/nem_relay_{N}b.va".format(N=args.N), 'w').write(output)

# Template substitution for quasistatic sweep SPICE test
template = Template(open('templates/quasistatic_sweep.sp.tmpl').read())
output = template.substitute(subs)
open("test/quasistatic_sweep_{N}b.sp".format(N=args.N), 'w').write(output)

# Template substitution for transient sweep SPICE test
template = Template(open('templates/transient_sweep.sp.tmpl').read())
output = template.substitute(subs)
open("test/transient_sweep_{N}b.sp".format(N=args.N), 'w').write(output)
