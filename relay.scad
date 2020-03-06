// Stanford NEM Relay CAD Model
// Author: Akash Levy

// RELAY PARAMETERS (lengths are in units of um)
g_act = 0.1;                // actuation gap: gap between c

t_poly = 0.2;               // thickness of poly-SiGe layer
L_plate = 3;                // side length of parallel plate

L_cant = L_plate;           // length of cantilever
W_cant = 0.2;               // width of cantilever
g_cant = W_cant;            // gap between plate and cantilever

L_via = 0.4;                // side length of via
L_anc = L_via + 0.2;        // side length of anchor attachment

circ_cont = 1;              // circular or grid contact mode
n_cont = 16;                // number of contacts
L_cont = 0.2;               // side length of contact
r_cont = 1;                 // radius of circle along which to place contacts
t_cont = 0.04;              // thickness of contact
t_chan = 0.02;              // thickness of channel

t_land = 0.1;               // thickness of landing contact

t_sp = 0.025;               // thickness of spacer

// RENDERING OPTIONS
poly_on = 1;
spacer_on = 1;
via_on = 1;
contact_on = 1;
channel_on = 1;
//landing_on = 1;
scale_factor = 1;
//scale_factor = 3/0.794; // for layout export

//projection() // for layout export
scale(scale_factor)
union () {
    // POLY LAYER AND VIA LAYER
    translate([0, 0, t_poly/2 + g_act + t_sp]) {
        // Plate
        if (poly_on)
        cube([L_plate, L_plate, t_poly], center=true);

        // Arms and attachments
        for(i=[0:3]) {
            rotate([0, 0, 90*i]) {
                // Cantilever
                if (poly_on)
                translate([L_cant/2 + g_cant + W_cant/2, -W_cant/2, 0])
                cube([W_cant, L_plate + W_cant, t_poly], center=true);
                
                // Cantilever attachment
                if (poly_on)
                translate([L_plate/2 + g_cant/2, L_plate/2 - W_cant/2, 0])
                cube([g_cant, W_cant, t_poly], center=true);
                
                // Anchors (attachments + vias)
                translate([L_plate/2 + g_cant + L_anc/2, -L_plate/2 - L_anc/2 - W_cant, 0]) {
                    // Attachments (anchors - vias)
                    if (poly_on)
                    difference() {
                        cube([L_anc, L_anc, t_poly], center=true);
                        translate([0, 0, -t_land/2 - g_act/2])
                        cube([L_via, L_via, t_poly + g_act + t_land + 0.1], center=true);
                    }
                        
                    // Vias
                    if (via_on)
                    color([1, 0, 0])
                    translate([0, 0, -t_land/2 - g_act/2 - t_sp/2])
                    cube([L_via, L_via, t_poly + g_act + t_land + t_sp], center=true);
                }
            }
        }
    }

    // INSULATING LAYER
    // TODO: use modules for insulating layer since same as poly layer pretty much
    if (spacer_on)
    color([0,1,0])
    translate([0, 0, g_act + t_sp/2]) {
        // Plate
        cube([L_plate, L_plate, t_sp], center=true);

        // Arms and attachments
        for(i=[0:3]) {
            rotate([0, 0, 90*i]) {
                // Cantilever
                translate([L_plate/2 + g_cant + W_cant/2, -W_cant/2, 0])
                cube([W_cant, L_plate + W_cant, t_sp], center=true);
                
                // Cantilever attachment
                translate([L_plate/2 + g_cant/2, L_plate/2 - W_cant/2, 0])
                cube([g_cant, W_cant, t_sp], center=true);
                
                // Anchors (attachments + vias)
                translate([L_plate/2 + g_cant + L_anc/2, -L_plate/2 - L_anc/2 - W_cant, 0]) {
                    // Attachments (anchors - vias)
                    difference() {
                        cube([L_anc, L_anc, t_sp], center=true);
                        translate([0, 0, -t_land/2 - g_act/2])
                        cube([L_via, L_via, t_poly + g_act + t_land + 0.1], center=true);
                    }
                }
            }
        }
    }

    // CONTACT LAYER
    if (contact_on)
    for(i=[1:n_cont]) {
        translate([r_cont * cos(360*(i-0.5)/n_cont), r_cont * sin(360*(i-0.5)/n_cont), g_act - t_cont/2])
        color([0.5, 0, 0.5])
        cube([L_cont, L_cont, t_cont], center=true);
    }
    
    // CHANNEL LAYER
    if (channel_on)
    for(i=[1:n_cont/2]) {
        rotate(360*i/n_cont*2)
        translate([r_cont*cos(180/n_cont), 0, g_act-t_chan/2])
        color([0, 0, 1])
        cube([L_cont,                                                                                                                                            , t_chan], center=true);
    }
    
    // LANDING LAYER
    if (landing_on)
    color([0.5, 0.5, 0.5])
    for(i=[1:n_cont]) {
        translate([r_cont * cos(360*(i-0.5)/n_cont), r_cont * sin(360*(i-0.5)/n_cont), 0])
        cube([L_cont, L_cont, t_land], center=true);
    }
}