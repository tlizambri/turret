$fn=100;


powerboard();


module powerboard() {
    board();
    translate([30,8,0]) power();
}

module board() {
    difference() {
        cube([138,47,1.5],center=true);
        translate([0,-15.5,0]) #cube([128,16,1.5],center=true);
    }
}


module power() {
    cube([70,30,1.5], center=true);
    translate([65/2,25/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([-65/2,25/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([65/2,-25/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([-65/2,-25/2,5/2]) cylinder(d=4,h=5,center=true); 
}