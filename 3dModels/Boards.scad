$fn=100;

motorboard();
translate([0,50,0]) powerboard();

module motorboard() {
    board();
    translate([48,0,0]) motor();
    translate([12,0,0]) motor();
}


module powerboard() {
    board();
    translate([30,0,0]) power();
}


//translate([0,-41,0]) relay();
//translate([26,44,0]) pi();


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

module pi() {
    cube([85,55,2], center=true);
    translate([58/2+10,48/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([58/2+10,-48/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([-58/2+10,48/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([-58/2+10,-48/2,5/2]) cylinder(d=4,h=5,center=true);
}

module relay() {
       cube([138,50,2], center=true);
        translate([132/2,45/2,5/2]) cylinder(d=4,h=5,center=true);
        translate([-132/2,45/2,5/2]) cylinder(d=4,h=5,center=true);
        translate([132/2,-45/2,5/2]) cylinder(d=4,h=5,center=true);
        translate([-132/2,-45/2,5/2]) cylinder(d=4,h=5,center=true);    
}

module power() {
    cube([70,30,2], center=true);
    translate([65/2,25/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([-65/2,25/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([65/2,-25/2,5/2]) cylinder(d=4,h=5,center=true);
    translate([-65/2,-25/2,5/2]) cylinder(d=4,h=5,center=true); 
}