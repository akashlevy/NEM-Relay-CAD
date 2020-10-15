# Stanford Accelerate NEM Relay Models

This repository contains almost everything a researcher might need to get started with NEM relays (MEM relays): (1) a parametric layout generator with KLayout, (2) finite elment models (FEM) with COMSOL/ANSYS, (3) static/dynamic compact model generators with SPICE/Verilog-A (and validation in Mathematica), (4) scripts for characterization with Synopsys SiliconSmart to produce Liberty files for VLSI flows.

A video tutorial of the COMSOL model is available: https://www.youtube.com/watch?v=YCjhU6pspo0

<img src="demo/mode1comsol.gif" alt="Modal Analysis in COMSOL" width="500"/>

## Step 1: Configure NEM relay parameters

The configuration file `params.json` controls the relay dimensions and model parameters. Descriptions of the parameters are in `helper/params_desc.json`. `contpts.json` controls the locations of the contacts. To initialize contact placement to a circle, this file can be deleted.

## Step 2: KLayout NEM relay layout generator

Please use `pip install klayout` to install the Python API for KLayout. You can also install the KLayout GUI (https://www.klayout.de/), which may help with layout visualization.

Running `cd layouts; python relay.py` will generate layouts in DXF, GDSII, and CIF format based on the parameters in `params.json`. It will also generate `comsol/contpts.txt` which can be loaded into COMSOL in the next step.

You can also get predictions of the pull-in/pull-out voltages and parasitic capacitances based on the parallel-plate model by running `python handcalcs.py`. This will use the params specified in `params.json` to calculate and print these numbers.

SIDE NOTE: when we wanted to use the layout with Virtuoso, we combined layers in KLayout by doing layer operations: layer 6 = layer 6 - layer 7 + layer 8.

## Step 3: Finite element modeling (FEM)

### COMSOL model

To begin, run `python comsol_preproc.py` to generate `params.txt`. Then, load the parameters into COMSOL:
1. Under `Global Definitions/Parameters/Relay Parameters`, clear, load from file and select `comsol/params.txt`.
2. Under `Global Definitions/Parameters/Contact Placement`, clear, load from file and select `comsol/contpts.txt`.

NOTE: you may have to slightly modify the parameters once they have been loaded, since COMSOL has a bug where it does not automatically update the relay selections.

The COMSOL model has 5 studies that predict the physics of the multi-pole NEM relay. These are:
1. Spring Constant: determine spring constant by applying force to plate
2. Modal Analysis: determine eigenmodes and shapes
3. Parasitic Extraction: extract parasitic mutual capacitances between all terminals
4. Quasi-Static Sweep: find pull-in and pull-out voltages, contact forces, displacement contour, etc.
5. Transient Sweep: find out pull-in speed

Once these have been computed, you can view the results:
1. Mutual capacitances between all terminals
2. Eigenmode shape
3. Parasitic extraction potential plot
4. Contact placement and displacement contour plot
5. Quasi-static sweep plot
6. Transient sweep plot
7. Mechanical properties (spring constant, mass, eigenfrequencies)
8. Contact force for each contact

You can export the parameters as well for iterative contact placement and SPICE modeling.

For iterative contact placement, make sure to run the quasi-static sweep, then choose an operating voltage and displacement contour to extract, then export the displacement contour points. Then, run `python contpts.py` to get the next set of contacts (modify the parameters internally, if necessary, first). This generates `contpts.json`, which is used by `layouts/relay.py` to generate a new layout using the contact placement.

For SPICE modeling, make sure to run `python comsol_postproc.py`, which generates `spice/tech_params.va`. These parameters are used by the Verilog-A model.

### ANSYS model (unfinished, skip this for now)

There is an unfinished ANSYS 2020 Workbench model. It builds the NEM relay geometry using a SpaceClaim script. More work would be needed for this model to accurately predict anything, but it may serve as a good starting point/reference for people trying to model a NEM relay in ANSYS (although COMSOL is better than ANSYS at accurately modeling coupled interactions).

## Step 4: Compact modeling

### SPICE/Verilog-A model

This model is adapted from "Micro-Relay Technology For Energy-Efficient Integrated Circuit" (Hei Kam, Fred Chen) and is designed for use with SPECTRE or HSPICE. Has been tested with HSPICE 2017.03. May also work with other SPICE simulators.

TODO
Talk about how to create the particular types of muxes we want to characterize
How would you modify to characterize the things you want? Could this be a config setting?

### Liberty model

Tested with SiliconSmart M-2017.03-2. Library Compiler (LC) also needs to be loaded to compile the Liberty (.lib) files to DB (.db) files.
TODO: update properly
- Use `python ohmux_inst_gen.py` to generate the run.tcl, netlists, and templates
- Use `siliconsmart run.tcl` to run the characterization flow
- Use `lc_shell -f compile.tcl` to compile the libs to dbs

### Mathematica model (validation only)

Running the Mathematica notebook will solve the damped ODE model of the NEM relay and yield the transient displacement curve. It is good for validating the effect of Q-factor damping.
