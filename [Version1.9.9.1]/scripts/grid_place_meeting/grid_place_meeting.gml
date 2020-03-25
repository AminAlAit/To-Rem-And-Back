///@arg object
///@arg grid

var _object = argument0;
var _grid	= argument1;

var top_right    = _grid[# (_object.bbox_right-1) div CELL_WIDTH,  _object.bbox_top		  div CELL_HEIGHT] == VOID;
var top_left     = _grid[#  _object.bbox_left	  div CELL_WIDTH,  _object.bbox_top		  div CELL_HEIGHT] == VOID;
var bottom_right = _grid[# (_object.bbox_right-1) div CELL_WIDTH, (_object.bbox_bottom-1) div CELL_HEIGHT] == VOID;
var bottom_left  = _grid[# _object.bbox_left	  div CELL_WIDTH, (_object.bbox_bottom-1) div CELL_HEIGHT] == VOID;

return top_right || top_left || bottom_right || bottom_left;