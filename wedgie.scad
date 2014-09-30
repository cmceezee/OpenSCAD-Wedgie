
// globals
w_length	= 50;
w_width 	= 30;
w_height = 8;
n1 = 10;
n2 = 6;

vertex = 25;



module wedgie()
{
	difference()
	{
		union()
		{
			cube([w_length,w_width,w_height], center=true);

			polyhedron(
				points = [
					[vertex, vertex, 0],  		//0
					[vertex, -1*vertex, 0],  		//1
					[-1*vertex, -1*vertex, 0], 		//2
					[-1*vertex, -1*vertex, 0], 	//3
					[0, 0, vertex]   			//4
				],
				triangles = [
					[0, 1, 2, 3],
					[4, 1, 0],
					[4, 2, 1],
					[4, 3, 2],
					[4, 0, 3]
				]
			);
		}

		union()
		{

		}
	}
}

wedgie();