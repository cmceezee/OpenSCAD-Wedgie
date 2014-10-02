include<parameters.scad>;

module wedgie()
{
	difference()
	{
		union()
		{
			cube([w_length,w_width,w_height], center=true);
		}

		union()
		{
			translate([gap_sk*w_length,gap_trans*w_width,0])
				cylinder(d=gap_w, 1.1*w_height, center=true);

			translate([gap_sk*w_length,0,0])
				cube([gap_w, (gap_trans+0.05)*w_length, 1.1*w_width], center=true);

			translate([gap_sk*w_length,-gap_trans*w_width,0])
				cylinder(d=gap_w, 1.1*w_height, center=true);

			translate([gap_sk*w_length+slot_l/2,w_width/7,0]) rotate([0,0,20]) 
				cube([slot_w,slot_l,slot_h], center=true);
		}
		
		// wedge
		rotate([0, -10, 0])
		translate([w_length*-0.1, 0, w_height*.7])
		{
			cube([w_length*1.2,w_width*1.2, w_height], true);
			
			render(convexity = 10)
			translate([0,0, w_height*.45])
			rotate([0, 180, 270])
			intersection()
			{
				scale([.3, .3, .1])
					surface("d_tenth.png", center=true, invert=true);
				translate([0,0,w_height])
					cube([w_width, w_width, w_height*.5], true);
			}
		}
		

	}
}

wedgie();