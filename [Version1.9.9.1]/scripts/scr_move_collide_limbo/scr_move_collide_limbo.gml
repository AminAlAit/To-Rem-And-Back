///@arg xSpeed
///@arg ySpeed
var _xspeed = argument0;
var _yspeed = argument1;

switch(room){
	#region Limbo
	case (room_hospital_first):
	case (room_hospital_second):
	case (room_limbo):
		if (!place_meeting(x + _xspeed, y, obj_wall_limbo)){
			x += argument0;
		}
		if (!place_meeting(x, y + _yspeed, obj_wall_limbo)){
			y += argument1;
		}
	break;#endregion
	#region Rem
	case(room_rem_first):
	case(room_rem_second):
		scr_move_collide_tileCollision(_xspeed, _yspeed);
	break; #endregion
}