$fn=200;
ratchet();
translate([27,0,0]) ratchet();
translate([-27,0,0]) ratchet();

launchTubeIgniter();
module launchTubeIgniter() {
    union() {
        difference() {
            //cylinder(d=28,h=65, center=true);
            union() {
                hull() {
                    translate([27,0,0]) cylinder(d=38,h=10, center=true);
                    translate([-27,0,0]) cylinder(d=38,h=10, center=true);
                    translate([27,28,0]) cylinder(d=38,h=10, center=true);
                    translate([-27,28,0]) cylinder(d=38,h=10, center=true);
                }
            }
            union() {
                 translate([0,0,2]) hull() {
                    translate([27,0,0]) cylinder(d=32,h=10, center=true);
                    translate([-27,0,0]) cylinder(d=32,h=10, center=true);
                    translate([27,28,0]) cylinder(d=32,h=10, center=true);
                    translate([-27,28,0]) cylinder(d=32,h=10, center=true);
                 }
                  hull() {
                    translate([27,0,0]) cylinder(d=24,h=70, center=true);
                    translate([-27,0,0]) cylinder(d=24,h=70, center=true);
                    translate([27,28,0]) cylinder(d=24,h=70, center=true);
                    translate([-27,28,0]) cylinder(d=24,h=70, center=true);
                 }
                
                 translate([-42,13,-1.5]) rotate([0,90,0]) cube([3,5,50], center=true);
                 translate([-42,15,-1.5]) rotate([0,90,0]) cylinder(d=3,h=50,center=true);
                 translate([-42,11,-1.5]) rotate([0,90,0]) cylinder(d=3,h=50,center=true);
                 
                translate([42.5,26,-1]) cylinder(d=6,h=4, center=true);
                translate([-42.5,26,-1]) cylinder(d=6,h=4, center=true);
                translate([42.5,-2,-1]) cylinder(d=6,h=4, center=true);
                translate([-42.5,-2,-1]) cylinder(d=6,h=4, center=true);                 
                #translate([42.5,26,-4]) cylinder(d=3.5,h=10, center=true);
                #translate([-42.5,26,-4]) cylinder(d=3.5,h=10, center=true);
                #translate([42.5,-2,-4]) cylinder(d=3.5,h=10, center=true);
                #translate([-42.5,-2,-4]) cylinder(d=3.5,h=10, center=true);
                 
                translate([0,-15,4]) cube([100,30, 12],center=true);
                #translate([43,12,2.5]) cube([2,35,3],center=true);
                #translate([-43,12,2.5]) cube([2,35,3],center=true);
            }
           
        }
        difference() {
            union() {
                translate([0,13,-4]) cube([90,6,2], center=true);
                translate([14,13,-4]) cube([6,60,2],center=true);
                translate([-14,13,-4]) cube([6,60,2],center=true);
            }
            union() {
                translate([14,26,-4]) cylinder(d=3.5,h=12, center=true);
                translate([-14,26,-4]) cylinder(d=3.5,h=12, center=true);
                translate([14,-2,-4]) cylinder(d=3.5,h=12, center=true);
                translate([-14,-2,-4]) cylinder(d=3.5,h=12, center=true);
            }
        }
    }
}

module ratchet() {
    difference() {
        translate([1,13,-4]) cube([4,60,2],center=true);
        #translate([0,1,-4]) cube([2,2,2],center=true);
        #translate([0,4,-4]) cube([2,2,2],center=true);
        #translate([0,-2,-4]) cube([2,2,2],center=true);
        #translate([0,-5,-4]) cube([2,2,2],center=true);
        #translate([0,29,-4]) cube([2,2,2],center=true);
        #translate([0,32,-4]) cube([2,2,2],center=true);
        #translate([0,26,-4]) cube([2,2,2],center=true);
        #translate([0,23,-4]) cube([2,2,2],center=true);
    }
}