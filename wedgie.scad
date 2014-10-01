
// globals
w_length		= 50;
w_width 		= 30;
w_height 	= 8;

gap_w 		= 8;
gap_t		= 0.25;
gap_sk 		= 0.38;

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
			translate([gap_sk*w_length,gap_t*w_width,0])		cylinder(d=gap_w, 1.1*w_height, center=true);
			translate([gap_sk*w_length,0,0])				cube([gap_w, gap_t*w_length, 1.1*w_width], center=true);
			translate([gap_sk*w_length,-gap_t*w_width,0])	cylinder(d=gap_w, 1.1*w_height, center=true);
		}
	}
}

wedgie();