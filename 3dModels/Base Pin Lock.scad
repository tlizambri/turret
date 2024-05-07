$fn=100;

difference() {
    union() {
        cube([9.5,3.9,2.8], center=true);
        rotate([0,0,45]) cube([9.5,3.9,2.8], center=true);
        rotate([0,0,90]) cube([9.5,3.9,2.8], center=true);
        rotate([0,0,-45]) cube([9.5,3.9,2.8], center=true);
    }
    cylinder(d=5.2,h=10,center=true);  
}

translate([0,0,2]) difference() {
    cylinder(d1=9,d2=7,h=3, center=true);
    union(){
        cylinder(d1=6,d2=4.8,h=3, center=true);  
        cube([2,10,10], center=true);
        cube([10,2,10], center=true);
    }
}

