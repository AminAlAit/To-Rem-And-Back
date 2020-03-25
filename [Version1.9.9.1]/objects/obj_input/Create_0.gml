// Mapping other keyboard keys W | A | S | D | J | K
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("J"), vk_lcontrol);
keyboard_set_map(ord("K"), vk_space);
scr_get_input();

state = "available"; //other state: state = "unavailable"

//////////
// This object handles player input
// key bindings should be changed in this object's step event
global.left_held	   = 0;
global.left_pressed	   = 0;
global.left_released   = 0;
global.right_held	   = 0;
global.right_pressed   = 0;
global.right_released  = 0;
global.down_held	   = 0;
global.down_pressed	   = 0;
global.down_released   = 0;
global.up_held		   = 0;
global.up_pressed	   = 0;
global.up_released	   = 0;
global.jump_pressed	   = 0;
global.jump_held	   = 0;
global.jump_released   = 0;
global.action_held	   = 0;
global.action_pressed  = 0;
global.action_released = 0;
global.gif_held		   = 0;
global.gif_pressed	   = 0;
global.gif_released    = 0;
#region Gamepad setup
global.joy		  = 0;
global.joy_in_use = 0;

// Checking for a gamepad
if (gamepad_is_connected(0)) {
	//set deadzone
    gamepad_set_axis_deadzone(0,0.5);
	// flag that we are indeed, using a joystick
    global.joy = 1;
}
#endregion