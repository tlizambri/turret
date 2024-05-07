$fn=100;

difference() {
    cube([152,152,55],center=true);
    union(){
        translate([0,0,4]) #cube([140,140,60],center=true);
        translate([0,77.5,25]) #cube([152,10,10],center=true);
        translate([0,-77.5,25]) #cube([152,10,10],center=true);
        translate([-77.5,0,25]) #cube([10,152,10],center=true);
        translate([77.5,0,25]) #cube([10,152,10],center=true);
    }
  
}

// pi mounts
translate([-140/2+5+3+2,140/2-32-5,-55/2+3]) cylinder(d=4,h=6, center=true);
translate([-140/2+5+3+2+58,140/2-32-5,-55/2+3]) cylinder(d=4,h=6, center=true);
translate([-140/2+5+3+2,140/2-32-5-48.5,-55/2+3]) cylinder(d=4,h=6, center=true);
translate([-140/2+5+3+2+58,140/2-32-5-48.5,-55/2+3]) cylinder(d=4,h=6, center=true);

//motor board mounts
translate([140/2-5-3-2,140/2-32-5,-55/2+3]) cylinder(d=4,h=6, center=true);
translate([140/2-5-3-2-27,140/2-32-5,-55/2+3]) cylinder(d=4,h=6, center=true);
translate([140/2-5-3-2,140/2-32-5-30,-55/2+3]) cylinder(d=4,h=6, center=true);
translate([140/2-5-3-2-27,140/2-32-5-30,-55/2+3]) cylinder(d=4,h=6, center=true);

translate([140/2-5-3-2,140/2-32-5-30-5,-55/2+3]) cylinder(d=4,h=6, center=true);
translate([140/2-5-3-2-27,140/2-32-5-30-5,-55/2+3]) cylinder(d=4,h=6, center=true);
translate([140/2-5-3-2,140/2-32-5-30-5-30,-55/2+3]) cylinder(d=4,h=6, center=true);
translate([140/2-5-3-2-27,140/2-32-5-30-5-30,-55/2+3]) cylinder(d=4,h=6, center=true);

// battery compartment
translate([38,140/2-32,0]) cube([140/2-5,2,55],center=true);
translate([-38,140/2-32,0]) cube([140/2-5,2,55],center=true);

// card slot #1
translate([-148/2+5,10,0]) cube([3,2,55],center=true);
translate([-148/2+5,10-4.5,0]) cube([3,2,55],center=true);

translate([148/2-5,10,0]) cube([3,2,55],center=true);
translate([148/2-5,10-4.5,0]) cube([3,2,55],center=true);

// card slot #2
translate([-148/2+5,-25,0]) cube([3,2,55],center=true);
translate([-148/2+5,-25-4.5,0]) cube([3,2,55],center=true);

translate([148/2-5,-25,0]) cube([3,2,55],center=true);
translate([148/2-5,-25-4.5,0]) cube([3,2,55],center=true);

// card slot #3
translate([-148/2+5,-60,0]) cube([3,2,55],center=true);
translate([-148/2+5,-64.5,0]) cube([3,2,55],center=true);

translate([148/2-5,-60,0]) cube([3,2,55],center=true);
translate([148/2-5,-64.5,0]) cube([3,2,55],center=true);

