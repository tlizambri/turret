$fn=100;

motorboard();

module motorboard() {
    board();
    translate([48,0,0]) motor();
    translate([12,0,0]) motor();
}

module board() {
    difference() {
        cube([138,47,2],center=true);
        translate([-38,8,0]) #cube([62,31,2],center=true);
    }
}

module motor() {
   cube([35,31,2], center=true);
    translate([30/2,27/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([-30/2,27/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([30/2,-27/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([-30/2,-27/2,5/2]) cylinder(d=4,h=5,center=true);
}
