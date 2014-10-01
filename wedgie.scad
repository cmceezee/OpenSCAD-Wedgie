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
	}
}

wedgie();