
// globals
co_radius = 50;
co_height = 30;
n1 = 10;
n2 = 6;

module complexObject()
{
	difference()
	{
		union()
		{
			cylinder(r=co_radius, h=co_height, center=true);

			for(r=[0:n1])
			{
				rotate([0,0,r*360/n1]) 
				translate([co_radius, 0, 0]) cube([10,10,co_height], center=true);
			}
		}

		union()
		{
			for(r=[0:n2])
			{
				rotate([0,0,r*360/n2]) 
				translate([co_radius/2, 0, 0]) cylinder(r=6,h=co_height*1.1, center=true);
			}
		}
	}
}

complexObject();