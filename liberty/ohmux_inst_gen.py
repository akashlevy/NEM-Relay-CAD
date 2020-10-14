# Import libraries
import argparse, json
from string import Template

# Parse arguments
parser = argparse.ArgumentParser(description="Generate N-bit-wide M-option one-hot multiplexer instance for SiliconSmart")
parser.add_argument('N', help="Bit width i.e. number of bits to route with one relay", type=int)
parser.add_argument('M', help="Number of inputs to multiplexer", type=int)
args = parser.parse_args()
N, M = args.N, args.M

# Pin definitions
pindefs = ["add_pin I{i}_{b} default -input".format(i=i, b=b) for i in range(M) for b in range(N)]
pindefs += ["add_pin S{i} default -input".format(i=i) for i in range(M)]
pindefs += ["add_pin Z_{b} default -output".format(b=b) for b in range(N)]
pindefs = "\n".join(pindefs)

# Function definition
fndefs = []
for b in range(N):
    spins = " ".join(["S{i}".format(i=i) for i in range(M)])
    fndefs.append("add_one_hot Z_%d { %s } { %s }" % (b, spins, ipins))
fndefs = '\n'.join(fndefs)

# Area
area = 0

# State partitions
spart = "one"

# Template substitution
template = Template(open("templates/nem_ohmux.inst.tmpl").read())
output = template.substitute(N=N, M=M, pindefs=pindefs, fndefs=fndefs, area=area, spart=spart)
outfname = "nems40tt/control/nem_ohmux_{M}i_{N}b.inst".format(M=M, N=N)
open(outfname, "w").write(output)
