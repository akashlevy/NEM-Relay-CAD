// Stanford NEM Relay CAD Model
// Author: Akash Levy

// RELAY PARAMETERS (lengths are in units of um)
g_act = 0.2;                // actuation gap: gap between 

t_poly = 0.5;               // thickness of poly-SiGe layer
L_plate = 4;                // side length of parallel plate

W_cant = 0.25;              // width of cantilever
g_cant = W_cant;            // gap between plate and cantilever

L_via = 0.5;                // side length of via
L_anc = L_via + 0.25;       // side length of anchor attachment

n_cont = 4;                 // number of contacts
L_cont = 0.5;               // side length of contact
r_cont = 1.5;               // radius of circle along which to place contacts
t_cont = 0.1;               // thickness of contact

t_sub = 0.1;                // substrate thickness

// future: could add release holes, interconnects, multi-spirals, options for more n-gons, insulating layer (would need to model this as dielectric layer, results in capacitances), check results of sqeeze-film damping

// POLY LAYER AND ANCHOR VIA LAYER
translate([0, 0, t_poly/2 + g_act]) {
    // Plate
    cube([L_plate, L_plate, t_poly], center=true);

    // Arms and attachments
    for(i=[0:3]) {
        rotate([0, 0, 90*i]) {
            // Cantilever
            translate([L_plate/2 + g_cant + W_cant/2, 0, 0])
            cube([W_cant, L_plate, t_poly], center=true);
            
            // Cantilever attachment
            translate([L_plate/2 + g_cant/2, L_plate/2 - W_cant/2, 0])
            cube([g_cant, W_cant, t_poly], center=true);
            
            // Anchors (attachments + vias)
            translate([L_plate/2 + g_cant + L_anc/2, -L_plate/2 - L_anc/2, 0]) {
                // Attachments (anchors - vias)
                difference() {
                    cube([L_anc, L_anc, t_poly], center=true);
                    translate([0, 0, -t_sub/2 - g_act/2])
                    cube([L_via, L_via, t_poly + g_act + t_sub + 0.1], center=true);
                }
                    
                // Vias
                color([1, 0, 0])
                translate([0, 0, -t_sub/2 - g_act/2])
                cube([L_via, L_via, t_poly + g_act + t_sub], center=true);
            }
        }
    }
}

// CONTACT LAYER
for(i=[1:n_cont]) {
    rotate([0, 0, 360/n_cont*i])
    translate([0, r_cont, g_act - t_cont/2])
    color([0.5, 0, 0.5])
    cube([L_cont, L_cont, t_cont], center=true);
}


// SUBSTRATE LAYER
color([0.5,0.5,0.5])
translate([0, 0, -t_sub/2]) {
    cube([L_plate*3, L_plate*3, t_sub], center=true);
}