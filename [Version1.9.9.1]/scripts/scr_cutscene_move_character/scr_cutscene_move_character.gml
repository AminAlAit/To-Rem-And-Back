///@desc move_character
///@arg obj
///@arg x
///@arg y
///@arg relative?
///@arg speed

var obj		 = argument0;
var _x		 = argument1;
var _y		 = argument2;
var relative = argument3;
var _speed	 = argument4;

if(x_dest == -1){
	if(!relative){
		x_dest = _x;
		y_dest = _y;
	}
	else {
		x_dest = obj.x + _x;
		y_dest = obj.y + _y;
	}
}

// move the obj
var xx = x_dest;
var yy = y_dest;

with(obj){
	// SPECIFY THE SPRITE WALK IN THE TARGET OBJECT
	sprite_index = spr_walk;
	
	if(point_distance(x, y, xx, yy) >= _speed){
		var dir	  = point_direction(x, y, xx, yy);
		var ldirx = lengthdir_x(_speed, dir);
		var ldiry = lengthdir_y(_speed, dir);
	
		if(ldirx != 0) image_xscale = sign(ldirx);
	
		x += ldirx;
		y += ldiry;
	}
	else {
		// SPECIFY THE SPRITE IDLE IN THE TARGET OBJECT
		sprite_index = spr_idle;
		x = xx;
		y = yy;
		
		// referring back to obj_cutscene_manager
		with(other){
			x_dest = -1;
			y_dest = -1;
			scr_cutscene_end_action();
		}
	}
}