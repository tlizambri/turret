$fn=100;

powerboard();

module powerboard() {
    board();
    translate([30,0,0]) power();
}

module board() {
    difference() {
        cube([138,47,2],center=true);
        translate([-38,8,0]) #cube([62,31,2],center=true);
    }
}

module power() {
    cube([70,30,2], center=true);
    translate([65/2,25/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([-65/2,25/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([65/2,-25/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([-65/2,-25/2,5/2]) cylinder(d=4,h=5,center=true); 
}