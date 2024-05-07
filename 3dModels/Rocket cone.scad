$fn=200;

difference() {
    scale([1,1,3.5]) sphere(r=4.2);
    union() {
        translate([0,0,-10]) cube([20,20,20], center=true);
        #cylinder(r=3.5,h=10, center=true);
    }
}