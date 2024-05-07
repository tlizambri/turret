$fn=100;

difference() {
    union() {
        cube([12.5,5.2,4], center=true);
        rotate([0,0,45]) cube([12.5,5.2,4], center=true);
        rotate([0,0,90]) cube([12.5,5.2,4], center=true);
        rotate([0,0,-45]) cube([12.5,5.2,4], center=true);
    }
    cylinder(d=7.7,h=10,center=true);  
}

translate([0,0,4]) difference() {
    cylinder(d1=10,d2=7.5,h=5, center=true);
    union(){
        cylinder(d1=8,d2=5.5,h=5, center=true);  
        cube([2,10,10], center=true);
        cube([10,2,10], center=true);
    }
}