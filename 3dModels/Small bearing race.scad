$fn=200;

difference() {
    bearingBase();
    #translate([0,0,1]) rotate_extrude(angle=360) translate([6.5,0,0]) circle(d=5);
}

module bearingBase() {
    difference() {
        cylinder(d=20, h=4, center=true);
        cylinder(d=5,  h=4, center=true);
    }
}