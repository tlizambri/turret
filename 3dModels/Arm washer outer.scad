$fn=200;

    difference() {
        union() {
            cylinder(d=24, h=2, center=true);
            translate([0,0,2.5]) cylinder(d=15,h=3,center=true);
            translate([0,0,11]) cylinder(d=11.75, h=14, center=true); 
        }
        #cylinder(d=10.75,  h=50, center=true);
    }