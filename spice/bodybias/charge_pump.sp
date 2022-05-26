.title <charge_pump.sp>

** Define the charge pump
.subckt charge_pump IN OUT VDD VDDIO VSS
    C1 IN MID 1n
    D1 MID VSS ndio area=0.1204p pj=1.42u
    D2 OUT MID ndio area=0.1204p pj=1.42u
    C2 OUT VSS 1n
.ends
