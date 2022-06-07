import glob, re
import matplotlib.pyplot as plt, pandas as pd

regex_fname = re.compile("(\d+)_BUFFD(\d+)BWP40_(0.\d+).timing.rpt")
pat1 = re.compile("Startpoint: I0\[0\].*Endpoint: Z\[0\]", re.DOTALL)
pat2 = re.compile("data arrival time\s*([\S]+)")
pat3 = re.compile("Startpoint: S.*Endpoint: Z", re.DOTALL)

Ns, Ds, loads, delays, names, ress = [], [], [], [], [], []
for fname in glob.glob("ptpx/reports/muxs*.timing.rpt"):
  with open(fname) as f:
    print(fname)

    match = re.search(regex_fname, fname)
    N, D, load = int(match.group(1)), int(match.group(2)), float(match.group(3))
    print(N, D, load)

    rpt = f.read()
    match = re.search(pat1, rpt)
    match = re.search(pat2, match.group(0))
    delay = float(match.group(1))
    print(delay)

    Ns.append(N)
    Ds.append(D)
    loads.append(load)
    delays.append(delay)
    names.append("cmos")
    ress.append(-1)

for fname in glob.glob("ptpx/reports/feedthru*.timing.rpt"):
  with open(fname) as f:
    print(fname)

    if ("feedthru1k" in fname):
      res = 1000
    elif ("feedthru5k" in fname):
      res = 5000
    else:
      res = 80
    match = re.search(regex_fname, fname)
    N, D, load = int(match.group(1)), int(match.group(2)), float(match.group(3))
    print(N, D, load)

    rpt = f.read()
    match = re.search(pat3, rpt)
    match = re.search(pat2, match.group(0))
    delay = float(match.group(1))
    print(delay)

    Ns.append(N)
    Ds.append(D)
    loads.append(load)
    delays.append(delay)
    names.append("nems")
    ress.append(res)

data = pd.DataFrame({'N': Ns, 'D': Ds, 'load': loads, 'delay': delays, 'name': names, 'res': ress})
print(data.head())

data = data[data['D'] == 1]
data = data[data['load'] <= .020]

cmosN2 = data[(data['N'] == 2) & (data['name'] == 'cmos')].sort_values('load')
cmosN4 = data[(data['N'] == 4) & (data['name'] == 'cmos')].sort_values('load')
cmosN10 = data[(data['N'] == 10) & (data['name'] == 'cmos')].sort_values('load')
nems80N2 = data[(data['N'] == 2) & (data['res'] == 80) & (data['name'] == 'nems')].sort_values('load')
nems80N4 = data[(data['N'] == 4) & (data['res'] == 80) & (data['name'] == 'nems')].sort_values('load')
nems80N10 = data[(data['N'] == 10) & (data['res'] == 80) & (data['name'] == 'nems')].sort_values('load')
nems1kN2 = data[(data['N'] == 2) & (data['res'] == 1000) & (data['name'] == 'nems')].sort_values('load')
nems1kN4 = data[(data['N'] == 4) & (data['res'] == 1000) & (data['name'] == 'nems')].sort_values('load')
nems1kN10 = data[(data['N'] == 10) & (data['res'] == 1000) & (data['name'] == 'nems')].sort_values('load')
nems5kN2 = data[(data['N'] == 2) & (data['res'] == 5000) & (data['name'] == 'nems')].sort_values('load')
nems5kN4 = data[(data['N'] == 4) & (data['res'] == 5000) & (data['name'] == 'nems')].sort_values('load')
nems5kN10 = data[(data['N'] == 10) & (data['res'] == 5000) & (data['name'] == 'nems')].sort_values('load')

# plt.xscale('log')
plt.figure(figsize=(7, 3.4))
plt.xscale('log')
# plt.xlim(0, 55)
# plt.ylim(0, 0.8)
plt.xlabel("Load Capacitance (fF)")
plt.ylabel("Delay (ns)")
plt.plot(cmosN2['load']*1000, cmosN2['delay'], '--', label="2i 8b CMOS", linewidth=1.2)
plt.plot(cmosN4['load']*1000, cmosN4['delay'], '--', label="4i 8b CMOS", linewidth=1.2)
plt.plot(cmosN10['load']*1000, cmosN10['delay'], '--', label="10i 8b CMOS", linewidth=1.2)

plt.plot(nems80N2['load']*1000, nems80N2['delay'], label="2i 8b NEMS ($R_{DS} = 80Ω$)", linewidth=1.2)
plt.plot(nems80N4['load']*1000, nems80N4['delay'], label="4i 8b NEMS ($R_{DS} = 80Ω$)", linewidth=1.2)
plt.plot(nems80N10['load']*1000, nems80N10['delay'], label="10i 8b NEMS ($R_{DS} = 80Ω$)", linewidth=1.2)

plt.plot(nems1kN2['load']*1000, nems1kN2['delay'], label="2i 8b NEMS ($R_{DS} = 1kΩ$)", linewidth=1.2)
plt.plot(nems1kN4['load']*1000, nems1kN4['delay'], label="4i 8b NEMS ($R_{DS} = 1kΩ$)", linewidth=1.2)
plt.plot(nems1kN10['load']*1000, nems1kN10['delay'], label="10i 8b NEMS ($R_{DS} = 1kΩ$)", linewidth=1.2)

plt.plot(nems5kN2['load']*1000, nems5kN2['delay'], label="2i 8b NEMS ($R_{DS} = 5kΩ$)", linewidth=1.2)
plt.plot(nems5kN4['load']*1000, nems5kN4['delay'], label="4i 8b NEMS ($R_{DS} = 5kΩ$)", linewidth=1.2)
plt.plot(nems5kN10['load']*1000, nems5kN10['delay'], label="10i 8b NEMS ($R_{DS} = 5kΩ$)", linewidth=1.2)

plt.legend(title="Mux I→Z Delay", loc='center left', bbox_to_anchor=(1, 0.5), prop={'size': 9})
plt.tight_layout()
plt.savefig("../figures/mux-delay.pdf")
plt.show()