for N in [2,4,10]:
  caps = {}
  with open(f'nem_ohmux_invd1_{N}i_8b.pex.netlist') as f:
    for line in f.readlines():
      if line[0] != 'c':
        continue
      _, pin, otherpin, cap = line.split()
      if pin in caps:
        caps[pin] += float(cap[:-1])
      else:
        caps[pin] = float(cap[:-1])
      if otherpin in caps:
        caps[otherpin] += float(cap[:-1])
      else:
        caps[otherpin] = float(cap[:-1])
  with open(f'nem_ohmux_invd1_{N}i_8b.pex.netlist.nem_ohmux_invd1_{N}i_8b.pxi') as f:
    for line in f.readlines():
      if line[0] != 'c':
        continue
      _, pin, otherpin, cap = line.split()
      if pin in caps:
        caps[pin] += float(cap[:-1])
      else:
        caps[pin] = float(cap[:-1])
      if otherpin in caps:
        caps[otherpin] += float(cap[:-1])
      else:
        caps[otherpin] = float(cap[:-1])
  # print(caps)
  maxI = 0
  maxZ = 0
  for key in caps:
    if key[0] == 'I' and caps[key] > maxI:
      maxI = caps[key]
    if key[0] == 'Z' and caps[key] > maxZ:
      maxZ = caps[key]
  print(N, maxI, maxZ)

