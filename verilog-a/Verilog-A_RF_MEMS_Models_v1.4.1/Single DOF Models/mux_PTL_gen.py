import numpy as np
import pandas as pd
from itertools import permutations
from itertools import combinations_with_replacement
from itertools import product
from string import ascii_lowercase

# Python program to illustrate union 
# Without repetition  
def Union(lst1, lst2): 
    final_list = list(set(lst1) | set(lst2)) 
    return final_list 

num_selectors = 4
num_inputs = 2**num_selectors
num_relays=num_selectors
v_g_hi = 6
v_g_lo = 0
v_s_hi = 2
v_s_lo = 0
relay_type = ["PMOS", "NMOS"]
input_pattern = "HLHLHLHLHLHLHLHL"
input_patt = list(input_pattern)

# combos_main = list(combinations_with_replacement(relay_type,num_selectors))
# combos_other = list(permutations(relay_type,num_selectors))
combos = list(product(relay_type, repeat=num_selectors))

for x in range(len(combos)):
    print(combos[x])

f = open("mux_PTL_generated.sp", "w")

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
f.write("\n")

f.write(".param vpull_in=2V vpull_out=0V Vdd = 3V Gnd = 0V\n")

f.write("\n")

for i in range(num_inputs):
    for j in range(1, num_selectors, 2):
        f.write("Xnem" + str(i) + "_" + str(j) + " s" + str(i) + " d" + str(i) + "_a " + "g" + str(j-1) + " ")
        type_rel_1 = [lis[0] for lis in combos] 
        type_rel_2 = [lis[1] for lis in combos] 
        if (type_rel_1[i] == "PMOS"):
            f.write("Vdd OHMIC_CANTILEVER_4T\n")
        if (type_rel_1[i] == "NMOS"):
            f.write("Gnd OHMIC_CANTILEVER_4T\n")
        f.write("Xnem" + str(i) + "_" + str(j+1) + " s" + str(i) + " d0 g" + str(j) + " ")
        if (type_rel_2[i] == "PMOS"):
            f.write("Vdd OHMIC_CANTILEVER_4T\n")
        if (type_rel_2[i] == "NMOS"):
            f.write("Gnd OHMIC_CANTILEVER_4T\n")
    f.write("\n")

f.write("\n")
f.write("\n")
temp = 0

for i in range(num_selectors):
    if (temp == 0):
        f.write("Vselect" + str(i) + " g" + str(i)+ " 0 " + str(v_g_hi) + "\n")
        temp = 1
    else:
        f.write("Vselect" + str(i) + " g" + str(i)+ " 0 " + str(v_g_lo) + "\n")
        temp = 0

f.write("\n")
f.write("\n")

for i in range(len(input_patt)):
    if (input_patt[i]=="H"):
        f.write("Vin" + str(i) + " s" + str(i)+ " 0 " + str(v_s_hi) + "\n")
    if (input_patt[i]=="L"):
        f.write("Vin" + str(i) + " s" + str(i)+ " 0 " + str(v_s_lo) + "\n")

f.write("\n")
f.write("\n")

f.write(".tran 0.2us 50us\n")
f.write(".probe PAR('abs(I(Vd))') V(d" + str(halfway) + "a)\n")
f.write(".end")