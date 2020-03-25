///@desc stay on lookout for any specified input
///@arg switch

var ctrl_switch = argument0;

if(ctrl_switch){
	right  = keyboard_check(vk_right);
	left   = keyboard_check(vk_left);
	down   = keyboard_check(vk_down);
	up	   = keyboard_check(vk_up);
	roll   = keyboard_check(vk_space);
	attack = keyboard_check(vk_lcontrol);
}