$fn=200;

difference() {
    bearingBase();
    #translate([0,0,3.5]) rotate_extrude(angle=360) translate([24,0,0]) circle(d=5);
}

module bearingBase() {
    difference() {
        cylinder(d=57, h=8, center=true);
        cylinder(d=40, h=8, center=true);
    }
}