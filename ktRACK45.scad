//
// ktRACK45
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 1.5;

W = 300;
D = 15.3;
S = 8;

translate([0, 60, 0])
ate();
cup();
translate([0, 30, 0])
cup_back();
translate([0, -35, 0])
base();


module ate()
{
difference()
{
    union()
    {
        translate([-24, -10, 0]) cube([20, 20, 31]);
    }
    //cup
    translate([-84/2-3, 0, 0]) rotate([0, 0, 0]) cylinder(r1=77/2, r2=84/2, h=94, $fn=1000);

    cup();
}
}

module cup()
{
difference()
{
    union()
    {
        translate([0, 0, 42]) rotate([0, -90, 0]) cylinder(r1=17/2, r2=27/2, h=7, $fn=100);
        translate([-3, 0, 42]) rotate([0, -90, 0]) cylinder(r1=30/2, r2=30/2, h=1, $fn=100);
    }
    //cup
    translate([-84/2-4, 0, 0]) rotate([0, 0, 0]) cylinder(r1=77/2, r2=84/2, h=94, $fn=1000);
    
    //magnet
    translate([-4, 0, 42]) rotate([0, 90, 0]) cylinder(r=(13)/2, h=2.6, $fn=100);
    
    translate([-100-3-1, -50, 0]) cube([100, 100, 100]);
}
}
module cup_back()
{
difference()
{
    union()
    {
        translate([-4, 0, 42]) rotate([0, -90, 0]) cylinder(r1=30/2, r2=30/2, h=3, $fn=100);
    }
    //cup
    translate([-84/2-3, 0, 0]) rotate([0, 0, 0]) cylinder(r1=77/2, r2=84/2, h=94, $fn=1000);
}
}






module base()
{
difference()
{
    union()
    {
        translate([4, 0, 42]) rotate([0, -90, 0]) cylinder(r1=30/2, r2=30/2, h=7, $fn=100);
    }
    //cup
    cup();
    //magnet
    translate([-4, 0, 42]) rotate([0, 90, 0]) cylinder(r=(13)/2, h=2.6, $fn=100);
    
    translate([-100-3-1, -50, 0]) cube([100, 100, 100]);
    
    //magnet
    translate([0.5+0.9+gap1, 0, 42]) rotate([0, 90, 0]) cylinder(r=(13)/2, h=2.3+0.3, $fn=100);
}
}
