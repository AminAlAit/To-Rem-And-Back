// Used at the knight's knockback state
randomize();

// Runs the Create event for the parent
event_inherited();

hp = 10;
max_hp = hp;

state	    = "chase";
chase_range = 42;
chase_speed = 1;
distance_to_player = point_distance(x, y, obj_player_limbo.x, obj_player_limbo.y);