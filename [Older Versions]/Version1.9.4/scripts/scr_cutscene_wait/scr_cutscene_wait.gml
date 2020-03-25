///@desc Cutscene_Wait
///@arg seconds

var seconds = argument0;

timer ++;
if(timer >= seconds * room_speed){
	timer = 0;
	scr_cutscene_end_action();
}