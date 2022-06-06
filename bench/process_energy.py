import glob, re
import matplotlib.pyplot as plt, pandas as pd

regex_fname = re.compile("(\d+)_BUFFD(\d+)BWP40_(0.\d+)\....\.power\.hier\.rpt")
pat1 = re.compile("Startpoint: I0\[0\].*Endpoint: Z\[0\]", re.DOTALL)
pat2 = re.compile("data arrival time\s*([\S]+)")
pat3 = re.compile("Startpoint: S.*Endpoint: Z", re.DOTALL)

Ns, Ds, loads, pows, names, ress = [], [], [], [], [], []
for fname in glob.glob("ptpx/reports/muxs*.inp.power.hier.rpt"):
  with open(fname) as f:
    module, intpow, swpow, leakpow, totpow, pct = list(f.readlines())[15].split()
    print(fname)

    match = re.search(regex_fname, fname)
    N, D, load = int(match.group(1)), int(match.group(2)), float(match.group(3))
    print(N, D, load)

    Ns.append(N)
    Ds.append(D)
    loads.append(load)
    pows.append(float(totpow))
    names.append("cmos")
    ress.append(-1)

for fname in glob.glob("ptpx/reports/feedthru*.sel.power.hier.rpt"):
  with open(fname) as f:
    module, intpow, swpow, leakpow, totpow, pct = list(f.readlines())[15].split()
    print(fname)

    if ("feedthru1k" in fname):
      continue
    elif ("feedthru5k" in fname):
      continue
    else:
      res = 80
    match = re.search(regex_fname, fname)
    N, D, load = int(match.group(1)), int(match.group(2)), float(match.group(3))
    print(N, D, load)

    Ns.append(N)
    Ds.append(D)
    loads.append(load)
    pows.append(float(totpow))
    names.append("nems")
    ress.append(res)

data = pd.DataFrame({'N': Ns, 'D': Ds, 'load': loads, 'pow': pows, 'name': names, 'res': ress})
print(data.head())

data = data[data['D'] == 1]
data = data[data['load'] <= .100]

cmosN2 = data[(data['N'] == 2) & (data['name'] == 'cmos')].sort_values('load')
print(cmosN2.head(20))
cmosN4 = data[(data['N'] == 4) & (data['name'] == 'cmos')].sort_values('load')
print(cmosN4.head(20))
cmosN10 = data[(data['N'] == 10) & (data['name'] == 'cmos')].sort_values('load')
print(cmosN10.head(20))
nems80N2 = data[(data['N'] == 2) & (data['res'] == 80) & (data['name'] == 'nems')].sort_values('load')
nems80N4 = data[(data['N'] == 4) & (data['res'] == 80) & (data['name'] == 'nems')].sort_values('load')
nems80N10 = data[(data['N'] == 10) & (data['res'] == 80) & (data['name'] == 'nems')].sort_values('load')

plt.figure(figsize=(5.6, 3.4))
plt.xlabel("Load Capacitance (fF)")
plt.ylabel("Switching Energy (a.u.)")
plt.plot(cmosN2['load']*1000, cmosN2['pow'], '--', label="2i 8b CMOS", linewidth=1.2)
plt.plot(cmosN4['load']*1000, cmosN4['pow'], '--', label="4i 8b CMOS", linewidth=1.2)
plt.plot(cmosN10['load']*1000, cmosN10['pow'], '--', label="10i 8b CMOS", linewidth=1.2)

plt.plot(nems80N2['load']*1000, nems80N2['pow'], label="2i 8b NEMS", linewidth=1.2)
plt.plot(nems80N4['load']*1000, nems80N4['pow'], label="4i 8b NEMS", linewidth=1.2)
plt.plot(nems80N10['load']*1000, nems80N10['pow'], label="10i 8b NEMS", linewidth=1.2)

plt.legend(title="Mux I→Z Switching Energy", loc='center left', bbox_to_anchor=(1, 0.5), prop={'size': 9})
plt.tight_layout()
plt.savefig("../figures/mux-energy.pdf")
plt.show()