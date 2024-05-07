$fn=200;

outerTubes();
innerTubes();

innerTubeLength   = 120;
innerTubeDiameter = 15;
outerTubeLength   = 65;
outerTubeDiameter = 28.25;


module outerTubes() {
    union() {
        difference() {
            union(){
                translate([0,0,0])    cylinder(d=outerTubeDiameter,h=outerTubeLength, center=true);
                translate([0,26,0])   cylinder(d=outerTubeDiameter,h=outerTubeLength, center=true);
                translate([26,0,0])   cylinder(d=outerTubeDiameter,h=outerTubeLength, center=true);
                translate([-26,0,0])  cylinder(d=outerTubeDiameter,h=outerTubeLength, center=true);
                translate([26,26,0])  cylinder(d=outerTubeDiameter,h=outerTubeLength, center=true);
                translate([-26,26,0]) cylinder(d=outerTubeDiameter,h=outerTubeLength, center=true);
            }
            union() {  
                translate([0,0,0]) {
                    cylinder(d=10,h=outerTubeLength, center=true);
                    rotate([0,0,-45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                    rotate([0,0,45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                }
                translate([0,26,0])   {
                    cylinder(d=10,h=outerTubeLength, center=true);
                    rotate([0,0,-45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                    rotate([0,0,45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                }
                translate([26,0,0])   {
                    cylinder(d=10,h=outerTubeLength, center=true);
                    rotate([0,0,-45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                    rotate([0,0,45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                }
                translate([-26,0,0])  {
                    cylinder(d=10,h=outerTubeLength, center=true);
                    rotate([0,0,-45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                    rotate([0,0,45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                }
                translate([26,26,0])  {
                    cylinder(d=10,h=outerTubeLength, center=true);
                    rotate([0,0,-45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                    rotate([0,0,45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                }
                translate([-26,26,0]) {
                    cylinder(d=10,h=outerTubeLength, center=true);
                    rotate([0,0,-45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                    rotate([0,0,45]) cube([3,innerTubeDiameter,outerTubeLength],center=true);
                }
                
                translate([0,0,3])    cylinder(d=outerTubeDiameter-3,h=outerTubeLength, center=true);
                translate([0,26,3])   cylinder(d=outerTubeDiameter-3,h=outerTubeLength, center=true);
                translate([26,0,3])   cylinder(d=outerTubeDiameter-3,h=outerTubeLength, center=true);
                translate([-26,0,3])  cylinder(d=outerTubeDiameter-3,h=outerTubeLength, center=true);
                translate([26,26,3])  cylinder(d=outerTubeDiameter-3,h=outerTubeLength, center=true);
                translate([-26,26,3]) cylinder(d=outerTubeDiameter-3,h=outerTubeLength, center=true);

                translate([0,0,3])    cylinder(d=innerTubeDiameter,h=outerTubeLength, center=true);
                translate([0,26,3])   cylinder(d=innerTubeDiameter,h=outerTubeLength, center=true);
                translate([26,0,3])   cylinder(d=innerTubeDiameter,h=outerTubeLength, center=true);
                translate([-26,0,3])  cylinder(d=innerTubeDiameter,h=outerTubeLength, center=true);
                translate([26,26,3])  cylinder(d=innerTubeDiameter,h=outerTubeLength, center=true);
                translate([-26,26,3]) cylinder(d=innerTubeDiameter,h=outerTubeLength, center=true);
            }
        }
       
    }
}

module innerTubes() {
    union() {
        difference() {;
            union(){
                translate([0,0,innerTubeLength/2-outerTubeLength/2+3])    cylinder(d=innerTubeDiameter+3,h=innerTubeLength, center=true);
                translate([0,26,innerTubeLength/2-outerTubeLength/2+3])   cylinder(d=innerTubeDiameter+3,h=innerTubeLength, center=true);
                translate([26,0,innerTubeLength/2-outerTubeLength/2+3])   cylinder(d=innerTubeDiameter+3,h=innerTubeLength, center=true);
                translate([-26,0,innerTubeLength/2-outerTubeLength/2+3])  cylinder(d=innerTubeDiameter+3,h=innerTubeLength, center=true);
                translate([26,26,innerTubeLength/2-outerTubeLength/2+3])  cylinder(d=innerTubeDiameter+3,h=innerTubeLength, center=true);
                translate([-26,26,innerTubeLength/2-outerTubeLength/2+3]) cylinder(d=innerTubeDiameter+3,h=innerTubeLength, center=true);
            }
            union() {                  
                translate([0,0,innerTubeLength/2-outerTubeLength/2+3])    cylinder(d=innerTubeDiameter,h=innerTubeLength, center=true);
                translate([0,26,innerTubeLength/2-outerTubeLength/2+3])   cylinder(d=innerTubeDiameter,h=innerTubeLength, center=true);
                translate([26,0,innerTubeLength/2-outerTubeLength/2+3])   cylinder(d=innerTubeDiameter,h=innerTubeLength, center=true);
                translate([-26,0,innerTubeLength/2-outerTubeLength/2+3])  cylinder(d=innerTubeDiameter,h=innerTubeLength, center=true);
                translate([26,26,innerTubeLength/2-outerTubeLength/2+3])  cylinder(d=innerTubeDiameter,h=innerTubeLength, center=true);
                translate([-26,26,innerTubeLength/2-outerTubeLength/2+3]) cylinder(d=innerTubeDiameter,h=innerTubeLength, center=true);   
            }            
            
        }
       
    }
    
}