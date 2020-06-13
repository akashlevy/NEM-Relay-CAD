import numpy as np
import pandas as pd

def multibit_gen(num_bits):
    numbits = num_bits

    f = open("multibit_4T.va", "w")
    f.write("`include \"disciplines.vams\"\n")
    f.write("`include \"constants.vams\"\n")
    f.write("\n")
    f.write("module OHMIC_CANTILEVER_4T(")
    for i in range(numbits):
        f.write("s" + str(i) + ",d" + str(i) + ",")

    f.write("g,b);\n")
    f.write("\n")
    f.write("inout ")

    for i in range(numbits):
        f.write("s" + str(i) + ", d" + str(i) + ", ")
    f.write("g, b;\n")

    for i in range(numbits):
        f.write("kinematic z" + str(i) + ", velocity" + str(i) + ";\n")

    f.write("\n")
    f.write("\n")

    f.write("parameter real g_0=0.6e-6 from (0:inf);\n")
    f.write("parameter real g_d=0.1e-6 from (0:inf);\n")
    f.write("parameter real l=75e-6 from (0:inf);\n")
    f.write("parameter real t=4e-6 from (0:inf);\n")
    f.write("parameter real w=30e-6 from (0:inf);\n")
    f.write("parameter real W_c=10e-6 from (0:inf);\n")
    f.write("parameter real W=150e-6 from (0:inf);\n")
    f.write("parameter real x=30e-6 from (0:inf);\n")
    f.write("parameter real R_c=1.0 from [0:inf);\n")
    f.write("parameter real rho=19.2e3 from (0:inf);\n")
    f.write("parameter real E=78e6 from (0:inf);\n")
    f.write("parameter real lambda=1.5e-7 from [0:inf);\n")
    f.write("parameter real mu=1.845e-5 from (0:inf);\n")
    f.write("parameter real c_1=10e-80 from [0:inf);\n")
    f.write("parameter real c_2=10e-75 from [0:inf);\n")

    f.write("\n")
    f.write("\n")

    f.write("real A, ")
    for i in range(numbits):
        f.write("b_damp_" + str(i) + ", C_d" + str(i) + "s" + str(i) + ", C_gs" + str(i) + ", ")
    f.write("C_u, ")
    for i in range(numbits):
        f.write("F_e_" + str(i) + ", F_s_" + str(i) + ", F_c_" + str(i) + ", ")
    f.write("f_m_0, ")
    for i in range(numbits):
        f.write("I1_" + str(i) + ", I2_" + str(i) + ", Q_e_" + str(i) + ", ")
    f.write("IIP3, k_1, m, Q_e, Q_m, t_s_max, t_s_min, V_H, V_P, V_S;\n")

    f.write("\n")
    f.write("\n")

    f.write("analog begin\n")
    f.write("@ ( initial_step ) begin\n")
    f.write("A=W*w;\n")
    f.write("m=0.4*rho*l*t*w;\n")
    f.write("k_1=2*E*w*pow(t/l,3)*(1-x/l)/(3-4*pow(x/l,3)+pow(x/l,4));\n")
    f.write("V_H=sqrt(2*k_1*(g_0-g_d)*pow(g_d,2)/(`P_EPS0*A));\n")
    f.write("V_P=sqrt(8*k_1*pow(g_0,3)/(27*A*`P_EPS0));\n")
    f.write("f_m_0=sqrt(k_1/m)/(2*`M_PI);\n")
    f.write("Q_m=(sqrt(E*rho)*pow(t,2)*pow(g_0,3))/(mu*pow(w*l,2));\n")
    f.write("V_S=V_P;\n")
    f.write("t_s_max=27*pow(V_P,2)/(4*2*`M_PI*f_m_0*Q_m*pow(V_S,2));\n")
    f.write("t_s_min=3.67*V_P/(V_S*sqrt(k_1/m));\n")
    f.write("C_u=`P_EPS0*W_c*w/g_0;\n")
    f.write("IIP3=10*log(2*k_1*pow(g_0,2)/(`M_PI*10e9*pow(C_u*50,2)))+30;\n")
    f.write("end\n")
    f.write("\n")
    f.write("\n")
	
    for i in range(numbits):
        f.write("Q_e_" + str(i) + "=Q_m*pow(1.1-pow(g_d*tanh(Pos(z" + str(i) + ")/g_d)/g_0,2),1.5)*(1+9.9638*pow(lambda/(g_0-g_d*tanh(Pos(z" + str(i) + ")/g_d)),1.159));\n")
        f.write("b_damp_" + str(i) + "=k_1/(2*`M_PI*f_m_0*Q_e_"+ str(i) + ");\n")
        f.write("F_c_" + str(i) + "=c_1*W_c*w/pow(g_d-g_d*tanh(Pos(z" + str(i) + ")/g_d)+1e-9,3)-c_2*W_c*w/pow(g_d-g_d*tanh(Pos(z" + str(i) + ")/g_d)+1e-9,10);\n")
        f.write("F_e_" + str(i) + "=`P_EPS0*A*pow(V(s" + str(i) + ",g),2)/2*1/pow(g_0-g_d*tanh(Pos(z" + str(i) + ")/g_d),2);\n")
        f.write("F_s_" + str(i) + "=k_1*Pos(z" + str(i) + ");\n")
        f.write("Pos(velocity" + str(i) + "):ddt(Pos(z" + str(i) + "))==Pos(velocity" + str(i) + ");\n")
        f.write("Pos(z" + str(i) + "):ddt(Pos(velocity" + str(i) + "))==1/m*(-b_damp_" + str(i) + "*Pos(velocity" + str(i) + ")-F_s_" + str(i) + "+F_e_" + str(i) + "+F_c_" + str(i) + "+white_noise(4*`P_K*$temperature*b_damp_" + str(i) + ", \"BROWNIAN_NOISE\"));\n")
        f.write("\n")
    f.write("\n")
    f.write("\n")

    for i in range(numbits):
        f.write("C_d" + str(i) + "s" + str(i) + "=`P_EPS0*W_c*w/(g_0-Pos(z" + str(i) + "));\n")
        f.write("I1_" + str(i) + "=ddt(C_d" + str(i) + "s" + str(i) + "*V(d" + str(i) + ",s" + str(i) + "));\n")
        f.write("I2_" + str(i) + "=V(d" + str(i) + ",s" + str(i) + ")/R_c+white_noise(4*`P_K*$temperature/R_c, \"JOHNSON_NYQUIST_NOISE_R_c\");\n")
        f.write("\n")
    f.write("\n")
    for i in range(numbits):
        f.write("if (Pos(z" + str(i) + ")<g_d)\n")
        f.write("begin\n")
        f.write("I(d" + str(i) + ",s" + str(i) + ")<+I1_" + str(i) + ";\n")
        f.write("end\n")
        f.write("else\n")
        f.write("begin\n")
        f.write("I(d" + str(i) + ",s" + str(i) + ")<+I2_" + str(i) + ";\n")
        f.write("end\n")
        f.write("\n")
        f.write("////////////////////////////////////////////////////////////\n")
    f.write("\n")
    f.write("\n")
    for j in range(numbits):
        f.write("C_gs" + str(j) + "=`P_EPS0*A/(g_0-Pos(z" + str(j) + "));\n")
        f.write("I(b,g)<+ddt(C_gs" + str(j) + "*V(b,g));\n")
    f.write("\n")
    f.write("\n")
    f.write("end\n")
    f.write("endmodule\n")
    f.close()