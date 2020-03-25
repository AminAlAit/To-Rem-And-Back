image_xscale = 0.9 * image_xscale;
image_yscale = 0.9 * image_yscale;
direction	 = point_direction(x, y, target.x, target.y);
speed		 = 2;

if(image_xscale <= 0.01 || image_yscale <= 0.01)
	instance_destroy();