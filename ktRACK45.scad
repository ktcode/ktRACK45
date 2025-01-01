//
// ktRACK45
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 2;



//rotate([0, -90, 0]) cup();
//rotate([0, -90, 0]) cup_inter();
//rotate([0, 90, 0]) cup_back();
//rotate([0, 90, 0]) base();


///*
cup();
translate([-25, 0, 0])
cup_inter();
translate([-25-10, 0, 0])
cup_back();
translate([30, 0, 0])
base();
//*/

module cup()
{
difference()
{
    union()
    {
        translate([0, 0, 42]) rotate([0, -90, 0]) cylinder(r1=17/2, r2=18/2, h=15, $fn=100);
        translate([-15, 0, 42]) rotate([0, -90, 0]) cylinder(r1=30/2, r2=30/2, h=1, $fn=100);
    }    
    //magnet
    translate([-2.6-0.6, 0, 42]) rotate([0, 90, 0]) cylinder(r=(13+2)/2, h=2.6, $fn=100);
    
    translate([-2.6-0.6+gap1, 0, 42]) rotate([0, -90, 0]) cylinder(r1=(13+2-2)/2, r2=(16-2)/2, h=15, $fn=100);
    translate([-100-15-1, -50, 0]) cube([100, 100, 100]);
}
}
module cup_inter()
{
difference()
{
    union()
    {
        translate([-2.6-0.6+gap1, 0, 42]) rotate([0, -90, 0]) cylinder(r1=(13+2-2-0.5)/2, r2=(16-2-0.5)/2, h=15, $fn=100);

    }    
    translate([-100-15-1, -50, 0]) cube([100, 100, 100]);
}
}
module cup_back()
{
difference()
{
    union()
    {
        translate([-15-1, 0, 42]) rotate([0, -90, 0]) cylinder(r1=30/2, r2=30/2, h=30, $fn=100);
    }
    //cup
    translate([-84/2-15, 0, 0]) cylinder(r1=77/2, r2=84/2, h=94, $fn=1000);
}
}


module base()
{
difference()
{
    union()
    {
        translate([2.6+0.6, 0, 42]) rotate([0, -90, 0]) cylinder(r1=30/2, r2=30/2, h=2.6+0.6+15, $fn=100);
    }
    //magnet
    translate([0.6+gap1, 0, 42]) rotate([0, 90, 0]) cylinder(r=13/2, h=2.6, $fn=100);
    
    translate([gap1, 0, 42]) rotate([0, -90, 0]) cylinder(r1=(17+0.5)/2, r2=(18+0.5)/2, h=15+gap2, $fn=100);
    translate([-15+3-gap1, 0, 42]) rotate([0, -90, 0]) cylinder(r1=17/2, r2=25/2, h=3, $fn=100);
}
}




/*
cup();
translate([0, 35, 0])
cup_back();
translate([0, -35, 0])
base();
translate([0, -35-35, 0])
base_back();



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
        translate([-4, 0, 42]) rotate([0, -90, 0]) cylinder(r1=30/2, r2=30/2, h=30, $fn=100);
    }
    //cup
    #translate([-84/2-3+22, 0, 0-10]) rotate([0, -45, 0]) cylinder(r1=77/2, r2=84/2, h=94, $fn=1000);
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


module base_back()
{
difference()
{
    union()
    {
        translate([4, 0, 42]) rotate([0, 90, 0]) cylinder(r1=30/2, r2=30/2, h=20, $fn=100);
    }
    #translate([5, 30/2, 0]) rotate([0, 0, -90+20]) cube([100, 100, 100]);
}
}
*/