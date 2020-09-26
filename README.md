# Stanford Accelerate NEM Relay Models

This repository contains almost everything a researcher would need to get started with NEM relays (or MEM relays): (1) a parametric layout generator with KLayout, (2) finite elment models (FEM) with COMSOL/ANSYS, (3) static/dynamic compact model generators with Mathematica/SPICE, (4) scripts for characterization with Synopsys SiliconSmart.

A video tutorial of the COMSOL model is available: https://www.youtube.com/watch?v=YCjhU6pspo0

<img src="demo/mode1comsol.gif" alt="Modal Analysis in COMSOL" width="500"/>

## KLayout NEM relay layout generator

Please use `pip install klayout` to install the Python API for KLayout. You can also install the KLayout GUI (https://www.klayout.de/), which may help with layout visualization.

## Finite element modeling (FEM)

### COMSOL model

### ANSYS model (unfinished)

There is an ANSYS 2020 model which builds the NEM relay geometry using SpaceClaim. More work is needed for parasitic extraction, parameter sweeping, etc. to work.

## Compact modeling

### SPICE/Verilog-A model

This model is adapted from "Micro-Relay Technology For Energy-Efficient Integrated Circuit" (Hei Kam, Fred Chen) and is designed for use with SPECTRE or HSPICE. Has been tested with HSPICE 2017.03. May also work with other SPICE simulators.

### Mathematica model

### Liberty model
