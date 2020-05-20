import numpy as np, pandas as pd, matplotlib.pyplot as plt

names = ['gate', 'body']
names += ['channel%s' % i for i in range(1,9)]
names += ['landpad%s' % i for i in range(1,17)]
ni = {name : i for i, name in enumerate(names)}
ni['channel'] = range(2,10)
ni['landpad'] = range(10,26)
matrix = pd.read_csv('mutual_cap_off2.csv', skiprows=5, header=None).drop(columns=0).as_matrix()
print matrix

cap_thresh = 2e-17
for i in range(len(names)):
    for j in range(len(names)):
        if matrix[i][j] >= cap_thresh:
            print "Capacitance from %s to %s is %.3e F" % (names[i], names[j], matrix[i][j])

pairs = [('gate', 'gate'), ('gate', 'body'), ('gate', 'landpad'), ('body', 'body'), ('body', 'channel')]
for b1, b2 in pairs:
    caps = np.array([matrix[ni[b1],ni[b2]], np.array(matrix[ni[b2],ni[b1]])]).flatten()
    capmean = caps.mean()
    capstd = caps.std()
    print "Capacitance from %s to %s: (mean, std) = (%.3e F, %.3e F)" % (b1, b2, capmean, capstd)
    # print caps
    # print
    #plt.hist(caps)
    #plt.show()