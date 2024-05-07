$fn=200;

    difference() {
        union() {
            cylinder(d=24, h=2, center=true);
            translate([0,0,3]) cylinder(d=15,h=4,center=true);
        }
        cylinder(d=9,  h=20, center=true);
    }