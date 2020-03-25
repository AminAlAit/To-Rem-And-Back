///@arg radius

var radius		= argument0;
var left_point  = obj_enemy.x - radius;
var right_point = obj_enemy.x - radius;

if(o_player.x >= left_point || o_player.x <= right_point){
	state = "chase"; 
}