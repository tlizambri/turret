$fn=200;

launchTubes();

module launchTubes() {
    union() {
        difference() {
            //cylinder(d=28,h=65, center=true);
            union(){
                translate([0,0,0]) cylinder(d=27.25,h=65, center=true);
                translate([0,26,0]) cylinder(d=27.25,h=65, center=true);
                translate([26,0,0]) cylinder(d=27.25,h=65, center=true);
                translate([-26,0,0]) cylinder(d=27.25,h=65, center=true);
                translate([26,26,0]) cylinder(d=27.25,h=65, center=true);
                translate([-26,26,0]) cylinder(d=27.25,h=65, center=true);
            }
            union() {  
                cylinder(d=10, h=65, center=true); 
                rotate([0,0,-45]) translate([0,8,2]) cube([4,8,65], center=true);
                rotate([0,0,-45]) translate([0,-8,2]) cube([4,8,65], center=true);
                translate([26,0,0]) rotate([0,0,45]){
                    cylinder(d=10, h=65, center=true);
                    rotate([0,0,90]) translate([0,8,2]) cube([4,8,65], center=true);
                    rotate([0,0,90]) translate([0,-8,2]) cube([4,8,65], center=true);
                }
                translate([-26,0,0]) rotate([0,0,45]) {
                    cylinder(d=10, h=65, center=true);
                    rotate([0,0,90]) translate([0,8,2]) cube([4,8,65], center=true);
                    rotate([0,0,90]) translate([0,-8,2]) cube([4,8,65], center=true);
                }
                translate([26,26,0]) rotate([0,0,45]){
                    cylinder(d=10, h=65, center=true);
                    rotate([0,0,90]) translate([0,8,2]) cube([4,8,65], center=true);
                    rotate([0,0,90]) translate([0,-8,2]) cube([4,8,65], center=true);
                }
                translate([0,26,0]) rotate([0,0,45]){
                    cylinder(d=10, h=65, center=true);
                    rotate([0,0,90]) translate([0,8,2]) cube([4,8,65], center=true);
                    rotate([0,0,90]) translate([0,-8,2]) cube([4,8,65], center=true);
                }
                translate([-26,26,0]) rotate([0,0,45]){
                    cylinder(d=10, h=65, center=true);
                    rotate([0,0,90]) translate([0,8,2]) cube([4,8,65], center=true);
                    rotate([0,0,90]) translate([0,-8,2]) cube([4,8,65], center=true);
                }
                
                rotate([0,0,45]) translate([0,8,2]) cube([4,8,65], center=true);
                rotate([0,0,45]) translate([0,-8,2]) cube([4,8,65], center=true);
                translate([26,0,0]) rotate([0,0,-45]){
                    rotate([0,0,90]) translate([0,8,2]) cube([4,8,65], center=true);
                    rotate([0,0,90]) translate([0,-8,2]) cube([4,8,65], center=true);
                }
                translate([-26,0,0]) rotate([0,0,-45]) {
                    rotate([0,0,90]) translate([0,8,2]) cube([4,8,65], center=true);
                    rotate([0,0,90]) translate([0,-8,2]) cube([4,8,65], center=true);
                }
                translate([26,26,0]) rotate([0,0,-45]){
                    rotate([0,0,90]) translate([0,8,2]) cube([4,8,65], center=true);
                    rotate([0,0,90]) translate([0,-8,2]) cube([4,8,65], center=true);
                }
                translate([0,26,0]) rotate([0,0,-45]){
                    rotate([0,0,90]) translate([0,8,2]) cube([4,8,65], center=true);
                    rotate([0,0,90]) translate([0,-8,2]) cube([4,8,65], center=true);
                }
                translate([-26,26,0]) rotate([0,0,-45]){
                    rotate([0,0,90]) translate([0,8,2]) cube([4,8,65], center=true);
                    rotate([0,0,90]) translate([0,-8,2]) cube([4,8,65], center=true);
                }
                
            }
        }
       
    }
}