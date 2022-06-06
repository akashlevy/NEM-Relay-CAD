import glob, re
import matplotlib.pyplot as plt, pandas as pd

regex_fname = re.compile("(\d+)_BUFFD(\d+)BWP40_(0.\d+).timing.rpt")
pat1 = re.compile("Startpoint: I0\[0\].*Endpoint: Z\[0\]", re.DOTALL)
pat2 = re.compile("data arrival time\s*([\S]+)")
pat3 = re.compile("Startpoint: S.*Endpoint: Z", re.DOTALL)

Ns, Ds, loads, delays, names = [], [], [], [], []
for fname in glob.glob("ptpx/reports/mux*.timing.rpt"):
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

data = data[data['D'] <= 4]
data = data[data['load'] <= .100]

cmosN2 = data[(data['N'] == 2) & (data['name'] == 'cmos')]
cmosN4 = data[(data['N'] == 4) & (data['name'] == 'cmos')]
cmosN10 = data[(data['N'] == 10) & (data['name'] == 'cmos')]
nemsN2 = data[(data['N'] == 2) & (data['name'] == 'nems')]
print (nemsN2.head())
nemsN4 = data[(data['N'] == 4) & (data['name'] == 'nems')]
print (nemsN4.head())
nemsN10 = data[(data['N'] == 10) & (data['name'] == 'nems')]

ax = plt.axes(projection='3d')
ax.plot_trisurf(cmosN2['D'], cmosN2['load']*1000, cmosN2['delay'], edgecolor='none')
ax.plot_trisurf(cmosN4['D'], cmosN4['load']*1000, cmosN4['delay'], edgecolor='none')
ax.plot_trisurf(cmosN10['D'], cmosN10['load']*1000, cmosN10['delay'], edgecolor='none')
ax.plot_trisurf(nemsN2['D'], nemsN2['load']*1000, nemsN2['delay'], edgecolor='none')
ax.plot_trisurf(nemsN4['D'], nemsN4['load']*1000, nemsN4['delay'], edgecolor='none')
ax.plot_trisurf(nemsN10['D'], nemsN10['load']*1000, nemsN10['delay'], edgecolor='none')
plt.show()