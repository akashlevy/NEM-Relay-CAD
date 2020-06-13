import numpy as np
import pandas as pd
from multibit import multibit_gen

num_relays = 6
num_bits = 2
multibit_gen(num_bits)
num_source = num_relays*num_bits
num_gates=num_relays
num_body=num_relays
res_val = 1
res_val_half = res_val/2
v_hi_s = 1
v_lo_s = 0
v_hi_g = 2
v_lo_g = 0

#Each letter = one bit
source_pattern = "HLHLHLHLHHLH"
s_patt = list(source_pattern)
if (len(s_patt)!=num_source):
    print("ERROR: Source Pattern is smaller/larger than it should be.")

#Each letter = one bit
gate_pattern = "HLHLHL"
g_patt = list(gate_pattern)
if (len(g_patt)!=num_gates):
    print("ERROR: Gate Pattern is smaller/larger than it should be.")

f = open("multiplexer_generated_4T.sp", "w")

f.write(".title <test_NEM.sp>\n")
f.write(".hdl ../VLOG/multibit_4T.va\n")

f.write("\n")

f.write(".option post=2\n")
f.write(".option converge=0\n")
f.write(".option RUNLVL=6\n")
f.write(".option METHOD=GEAR\n")
f.write(".option INGOLD=1\n")
f.write(".option accurate delmax=1e-8\n")

f.write("\n")

f.write(".param vpull_in=2V vpull_out=0V\n")

f.write("\n")
f.write("\n")

k = 0
halfway=0
for i in range(num_relays):
    f.write("Xnem" + str(i))
    for j in range(num_bits):
        f.write(" s" + str(k) + " d" + str(k))
        k += 1
    f.write(" g" + str(i) + " b" + str(i) + " OHMIC_CANTILEVER_4T\n")
    if (i == (num_relays-2)/2):
        halfway=k-1
        f.write("R" + str(k-1) + " d" + str(k-1) + " d" + str(k-1) + "a " + str(res_val_half) + "\n")
        f.write("Radd" + " d" + str(k-1) + "a" + " d" + str(k) + " " + str(res_val_half) + "\n")
    else:
        f.write("R" + str(k-1) + " d" + str(k-1) + " d" + str(k) + " " + str(res_val) + "\n")

f.write("Rfinal d" + str(int(halfway)) + "a 0 10e9\n")

f.write("\n")
f.write("\n")

for j in range(num_source):
    f.write("Vs" + str(j) + " s" + str(j) + " 0 ")
    if (s_patt[j]=="H"):
        f.write(str(v_hi_s) + "\n")
    if (s_patt[j]=="L"):
        f.write(str(v_lo_s) + "\n")

f.write("\n")
f.write("\n")

for k in range(num_gates):
    f.write("Vg" + str(k) + " g" + str(k) + " 0 ")
    if (g_patt[k]=="H"):
        f.write(str(v_hi_g) + "\n")
    if (g_patt[k]=="L"):
        f.write(str(v_lo_g) + "\n")

f.write("\n")
f.write("\n")

for l in range(num_body):
    f.write("Vb" + str(l) + " b" + str(l) + " 0 0" + "\n")

f.write("\n")
f.write("\n")

f.write(".tran 0.2us 50us\n")
f.write(".probe PAR('abs(I(Vd))') V(d" + str(halfway) + "a)\n")
f.write(".end")