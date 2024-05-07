$fn=200;

difference() {
    bearingBase();
    #translate([0,0,1]) rotate_extrude(angle=360) translate([8,0,0]) circle(d=5);
}

module bearingBase() {
    difference() {
        union() {
            cylinder(d=24, h=4, center=true);
            translate([0,0,-4]) cylinder(d=15,h=4,center=true);
        }
        cylinder(d=9,  h=20, center=true);
    }
}