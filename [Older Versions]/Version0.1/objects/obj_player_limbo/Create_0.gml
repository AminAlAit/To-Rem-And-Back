//Runs the Create event for the parent
event_inherited();

// Override
hp = 100;
max_hp = hp;
kills = 0;
level = 1;

image_speed = 0.4;

state = "move";

global.run_speed_limbo = 4;
global.roll_speed_limbo = 6;

// Dependencies
input = instance_create_layer( 0, 0, "Instances",obj_input_limbo);