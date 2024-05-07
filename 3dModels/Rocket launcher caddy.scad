$fn=200;

launchTubeCaddy();
module launchTubeCaddy() {
    union() {
        translate([43,13,-31.5]) cube([2,25,2],center=true);
        translate([-43,13,-31.5]) cube([2,25,2],center=true);
        difference() {
            //cylinder(d=28,h=65, center=true);
            hull() {
                translate([26,0,0]) cylinder(d=34,h=65, center=true);
                translate([-26,0,0]) cylinder(d=34,h=65, center=true);
                translate([26,26,0]) cylinder(d=34,h=65, center=true);
                translate([-26,26,0]) cylinder(d=34,h=65, center=true);
            }
            union() {
                 translate([0,0,2]) hull() {
                    translate([26,0,0]) cylinder(d=29,h=65, center=true);
                    translate([-26,0,0]) cylinder(d=29,h=65, center=true);
                    translate([26,26,0]) cylinder(d=29,h=65, center=true);
                    translate([-26,26,0]) cylinder(d=29,h=65, center=true);
                 }
                  hull() {
                    translate([27,0,0]) cylinder(d=20,h=70, center=true);
                    translate([-27,0,0]) cylinder(d=20,h=70, center=true);
                    translate([27,27,0]) cylinder(d=20,h=70, center=true);
                    translate([-27,27,0]) cylinder(d=20,h=70, center=true);
                 }
            }
           
        }
        
        difference () {
            union() {
                translate([47,13,0]) rotate([0,90,0]) cylinder(d=15, h=12, center=true);
            }
            #translate([50,13,0]) rotate([0,90,0]) cylinder(d=7, h=14, center=true);
            #translate([49,13,0]) rotate([0,0,0]) cylinder(d=2, h=20, center=true);
        }
    }
}