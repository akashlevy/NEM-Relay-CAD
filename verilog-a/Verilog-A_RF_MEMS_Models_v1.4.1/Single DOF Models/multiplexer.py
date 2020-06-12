import numpy as np
import pandas as pd

num_relays = 4
res_val = 1
res_val_half = res_val/2
v_hi_s = 2
v_lo_s = 0
v_hi_g = 2
v_lo_g = 0

source_pattern = "HLHL"
s_patt = list(source_pattern)

gate_pattern = "HLHL"
g_patt = list(gate_pattern)

f = open("multiplexer_generated_4T.sp", "w")

f.write(".title <test_NEM.sp>\n")
f.write(".hdl ../VLOG/ohmic_4T.va\n")

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

for i in range(num_relays):
    f.write("Xnem" + str(i) + " s" + str(i) + " d" + str(i) + " g" + str(i) + " b" + str(i) + " OHMIC_CANTILEVER_4T\n")
    if (i == (num_relays-2)/2):
        f.write("R" + str(i) + " d" + str(i) + " d" + str(i) + "a " + str(res_val_half) + "\n")
        f.write("Radd" + " d" + str(i) + "a" + " d" + str(i+1) + " " + str(res_val_half) + "\n")
    else:
        f.write("R" + str(i) + " d" + str(i) + " d" + str(i+1) + " " + str(res_val) + "\n")

f.write("Rfinal d" + str(int((num_relays-2)/2)) + " 0 10e9\n")

f.write("\n")
f.write("\n")

for j in range(len(s_patt)):
    f.write("Vs" + str(j) + " s" + str(j) + " 0 ")
    if (s_patt[j]=="H"):
        f.write(str(v_hi_s) + "\n")
    if (s_patt[j]=="L"):
        f.write(str(v_lo_s) + "\n")

f.write("\n")
f.write("\n")

for k in range(len(g_patt)):
    f.write("Vg" + str(k) + " g" + str(k) + " 0 ")
    if (g_patt[k]=="H"):
        f.write(str(v_hi_g) + "\n")
    if (g_patt[k]=="L"):
        f.write(str(v_lo_g) + "\n")

f.write("\n")
f.write("\n")

for l in range(num_relays):
    f.write("Vb" + str(l) + " b" + str(l) + " 0 0" + "\n")

f.write("\n")
f.write("\n")

f.write(".tran 0.2us 400us\n")
f.write(".probe PAR('abs(I(Vd))') V(d" + str(int((num_relays-2)/2)) + "a)\n")
f.write(".end")