instance_create_layer(x, y, "Objects", obj_pickedup);

// notifying Rem System
with(obj_rem_system_first) collected ++;
// some GUI stuff
with(obj_levelMaker) plates--;

//Debug(obj_player_native,"collision");
//if(alarm[0]<=0) alarm[0] = 1;
with(obj_rem_ui) clues ++;

instance_destroy();
