$fn=200;

    difference() {
        union() {
            cylinder(d=24, h=2, center=true);
            translate([0,0,2.5]) cylinder(d=15,h=3,center=true);
            translate([0,0,10]) cylinder(d=10.5, h=18, center=true); 
        }
        #cylinder(d=9,  h=50, center=true);
    }