///@arg direction

var _direction = argument0;

switch(_direction){
	#region Left Direction
	case "left":
		if (grid_place_meeting(self, o_level.grid_)) {
			x = bbox_left&~(CELL_WIDTH-1);
			x += CELL_WIDTH+x-bbox_left;
			x_speed_ = 0;
		}
	break;
	#endregion
	#region Right Direction
	case "right":
		if (grid_place_meeting(self, o_level.grid_)) {
			x = bbox_right&~(CELL_WIDTH-1);
			x -= bbox_right-x;
			x_speed_ = 0;
		}
	break;
	#endregion
	#region Bottom Direction
	case "bottom":
		if (grid_place_meeting(self, o_level.grid_)) {
			y = bbox_bottom&~(CELL_HEIGHT-1);
			y -= bbox_bottom-y;
			y_speed_ = 0;
		}
	break;
	#endregion
	#region Top Direction
	case "top":
		if (grid_place_meeting(self, o_level.grid_)) {
			y = bbox_top&~(CELL_HEIGHT-1);
			y += CELL_HEIGHT+y-bbox_top;
			y_speed_ = 0;
		}
	break;
	#endregion
}