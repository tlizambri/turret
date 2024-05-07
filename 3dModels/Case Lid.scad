$fn=200;

lid();
turretsupport();

module lid() {
    difference() {
        translate([0,0,5]) cube([152,152,26],center=true);
        union(){
            // changed 146x146 to 146.5 x146.5
            translate([0,0,14])cube([146.5,146.5,18],center=true);
            #translate([0,0,1]) cube([140,140,14],center=true);
            translate([0,0,-4]) #cylinder(d1=120,d2=116,h=8,center=true);
            #translate([152/2-15,152/2-35,0]) cylinder(d=13, h=60, center=true);
        }
    }
}

module turretsupport() {
    difference() {
        translate([0,0,-4]) cylinder(d=122,h=8,center=true);
        union() {
            translate([0,0,-4]) #cylinder(d1=118,d2=115,h=8,center=true);
            #translate([0,60,-4]) rotate([90,0,0]) cylinder(d=4,h=30,center=true);
            #rotate([0,0,120]) translate([0,60,-4]) rotate([90,0,0]) cylinder(d=4,h=30,center=true);
            #rotate([0,0,-120]) translate([0,60,-4]) rotate([90,0,0]) cylinder(d=4,h=30,center=true);
            
        }
    }
}





