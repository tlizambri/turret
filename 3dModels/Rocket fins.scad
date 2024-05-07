$fn=200;

fin();
//translate([0,0,-20]) cylinder(r1=10,r2=5,h=20);
difference() {
    cylinder(d=9,h=5, center=true);
    #cylinder(d=7.5, h=200, center=true);
}


module fin() {
    difference() {
        union(){
            translate([7,0,7.5])  cube([7,1.5,20], center=true);
            translate([-7,0,7.5]) cube([7,1.5,20],center=true);
            rotate([0,0,90])  translate([7,0,7.5])  cube([7,1.5,20], center=true);
            rotate([0,0,90]) translate([-7,0,7.5]) cube([7,1.5,20], center=true);
        }
        union() {
            #rotate([0,-20,0]) translate([16,0,0]) cube([10,2,50],center=true);
            #rotate([0, 20,0]) translate([-16,0,0]) cube([10,2,50],center=true); 
            
            #rotate([0,-20,90]) translate([16,0,0]) cube([10,2,50],center=true);
            #rotate([0, 20,90]) translate([-16,0,0]) cube([10,2,50],center=true); 
            #translate([0,0,15]) cube([20,20,20],center=true);
        }
    }
        
}