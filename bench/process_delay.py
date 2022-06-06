import glob, re
import matplotlib.pyplot as plt, pandas as pd

regex_fname = re.compile("(\d+)_BUFFD(\d+)BWP40_(0.\d+).timing.rpt")
pat1 = re.compile("Startpoint: I0\[0\].*Endpoint: Z\[0\]", re.DOTALL)
pat2 = re.compile("data arrival time\s*([\S]+)")
pat3 = re.compile("Startpoint: S.*Endpoint: Z", re.DOTALL)

Ns, Ds, loads, delays, names = [], [], [], [], []
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

for fname in glob.glob("ptpx/reports/feedthru*.timing.rpt"):
  with open(fname) as f:
    print(fname)

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

data = pd.DataFrame({'N': Ns, 'D': Ds, 'load': loads, 'delay': delays, 'name': names})
print(data.head())

data = data[data['D'] == 1]
data = data[data['load'] <= .100]

cmosN2 = data[(data['N'] == 2) & (data['name'] == 'cmos')].sort_values('load')
cmosN4 = data[(data['N'] == 4) & (data['name'] == 'cmos')].sort_values('load')
cmosN10 = data[(data['N'] == 10) & (data['name'] == 'cmos')].sort_values('load')
nemsN2 = data[(data['N'] == 2) & (data['name'] == 'nems')].sort_values('load')
nemsN4 = data[(data['N'] == 4) & (data['name'] == 'nems')].sort_values('load')
nemsN10 = data[(data['N'] == 10) & (data['name'] == 'nems')].sort_values('load')

# plt.xscale('log')
plt.figure(figsize=(6, 4))
plt.xlabel("Load Capacitance (fF)")
plt.ylabel("Delay (ns)")
plt.plot(cmosN2['load']*1000, cmosN2['delay'], label="2i 8b CMOS")
plt.plot(cmosN4['load']*1000, cmosN4['delay'], label="4i 8b CMOS")
plt.plot(cmosN10['load']*1000, cmosN10['delay'], label="10i 8b CMOS")
plt.plot(nemsN2['load']*1000, nemsN2['delay'], label="2i 8b NEMS ($R_{DS} = 80Ω$)")
plt.plot(nemsN4['load']*1000, nemsN4['delay'], label="4i 8b NEMS ($R_{DS} = 80Ω$)")
plt.plot(nemsN10['load']*1000, nemsN10['delay'], label="10i 8b NEMS ($R_{DS} = 80Ω$)")
plt.legend(title="Mux I→Z Delay", loc='center left', bbox_to_anchor=(1, 0.5))
plt.tight_layout()
plt.show()