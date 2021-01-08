# Stanford NEM Relay CAD Model
# Author: Akash Levy

# Import klayout
from math import sin, cos, pi, sqrt, atan2
from load_params import *
import pya

# Create layout and top cell
layout = pya.Layout()
top = layout.create_cell("TOP")

# Rotation transformation
def rotate(theta=360/n_sides):
    return pya.ICplxTrans(1, theta, False, 0, 0)

# Edge processor
ep = pya.EdgeProcessor()

# Create layers
nemanc = layout.layer(1, 0)
nemchan = layout.layer(2, 0)
nemcont = layout.layer(3, 0)
nembody = layout.layer(4, 0)
nemholes = layout.layer(5, 0)
nemsub = layout.layer(6, 0)
nemsubg = layout.layer(7, 0)
nemland = layout.layer(8, 0)

# Create anchors
ancloc = L_plate/2 + W_cant + L_anc/2
ancloc = pya.Point(ancloc, ancloc)
anchor = pya.Box(-L_via/2, -L_via/2, L_via/2, L_via/2).move(ancloc)
for _ in range(n_sides):
    top.shapes(nemanc).insert(anchor)
    top.shapes(nemsub).insert(anchor)
    anchor = anchor.transformed(rotate())

# Create relay body
plate = pya.Box(-L_plate/2, -L_plate/2, L_plate/2, L_plate/2)
anchor = pya.Box(-L_anc/2, -L_anc/2, L_anc/2, L_anc/2).move(ancloc)
cantloc = pya.Point(-L_plate/2, L_plate/2)
cantatt = pya.Box(0, 0, W_cant, W_cant).moved(cantloc)
cant = pya.Box(0, W_cant, L_cant + 2 * W_cant, 2 * W_cant).moved(cantloc)
relaycomps = [plate]
for _ in range(n_sides):
    relaycomps += [anchor, cantatt, cant]
    anchor = anchor.transformed(rotate())
    cantatt = cantatt.transformed(rotate())
    cant = cant.transformed(rotate())
relay = ep.merge_to_polygon(relaycomps, 0, True, True)[0]

# Insert relay holes
bound = pya.Box(-r_hole_pl*1.3, -r_hole_pl*1.3, r_hole_pl*1.3, r_hole_pl*1.3)
for i, n in enumerate(n_hole):
    r = float(i) / max_hole * r_hole_pl
    for h in range(n):
        holeloc = pya.Point(r*cos(2*pi/n*(h+0.5)), r*sin(2*pi/n*(h+0.5)))
        if bound.contains(holeloc):
            hole = pya.Box(-L_hole/2, -L_hole/2, L_hole/2, L_hole/2).moved(holeloc)
            top.shapes(nemholes).insert(hole)
            #relay.insert_hole(hole)
top.shapes(nembody).insert(relay)

# Create relay substrate
top.shapes(nemsub).insert(plate)

# Create contact layer and landing pads
for contx, conty in contpts:
    contloc = pya.Point(contx, conty)
    cont = pya.Box(-L_cont/2, -L_cont/2, L_cont/2, L_cont/2).moved(contloc)
    padl = L_cont + g_land*2
    lgap = pya.Box(-padl/2, -padl/2, padl/2, padl/2).moved(contloc)
    top.shapes(nemcont).insert(cont)
    top.shapes(nemsubg).insert(lgap)
    top.shapes(nemland).insert(cont)

# Create channel layer
for (pt1x, pt1y), (pt2x, pt2y) in zip(contpts[0::2], contpts[1::2]):
    chanloc = pya.Point((pt1x+pt2x)/2, (pt1y+pt2y)/2)
    chanlen = sqrt((pt2x-pt1x)**2 + (pt2y-pt1y)**2)
    changle = atan2(pt2y-pt1y, pt2x-pt1x) * 360 / (2 * pi) 
    chan = pya.Box(-chanlen/2, -L_cont/2, chanlen/2, L_cont/2)
    chan = pya.Polygon(chan).transformed(rotate(changle)).moved(chanloc)
    top.shapes(nemchan).insert(chan)

# Write drawing output
layout.write("relay.gds")
layout.write("relay.dxf")
layout.write("relay.cif")
